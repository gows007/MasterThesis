function [targetList] = SignalProcessing(rawData)
%signalProcessing contains the radar signal processing algorithms for the
%FeuerWeRR SISO radar.
%   
%   The SISO radar signal processing contains:
%   1. Data prepocessing (DC-calibration, windowing, antenna ringing)
%   2. IQ calibration (gain & phase imbalance)
%   3. DFT (spectrum
%   4. Detection (OS-CFAR)
%   5. Peak interpolation
%   The signal processing steps 3. - 5. are executed for range and Doppler
%   independently to execute two 1-dimensional searches in the Detection
%   rather than pne 2-dimensional search. This slightly degrades the
%   sensibility, but highly decreases the computational time. 
%   First targets are detected/interpolated in range directions, then each
%   range cell containing a target is processed to find the velocities of
%   the targets in this range cell. 
%
%   Input arguments:
%       rawData     := radar measurement signal
%       setting     := a structure containing the radar modulation
%                      parameters
%       doVisualize := a logical whether or not the rD-spectrum should be
%                      calculated or not (use this only for debugging; the 
%                      2D-spectrum is computationally costly)
%
%   Output arguments:
%       targetList  := the list of detected targets, containing amplitude,
%       range and velocity in metric units. 
%       channelFFT  := the rD-spectrum for plotting; it is empty if 
%                      doVisualize==false
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created
%   v1.1: 2017-06-21:  adapted to Modul 1 Hardware for TdW Demo

doVisualize = 0;
% load current RADAR settings
RADAR = load('settings.mat');
%% Signal Processing Defs
%antenna ringing
sp.antennaRinging.clipStart=.003;   % * maximum range
sp.antennaRinging.clipEnd=.997;     % * maximum range
% %CFAR:
sp.cfar.numberGuardCells=5;
sp.cfar.numberTrainingCells=15;
sp.cfar.probabilityFalseAlarm=5e-8;

fftw('planner','patient');   % set fft mode

%% Init
persistent radParam
if isempty(radParam)
    % get all radar-relevant information
    radParam=getRadarParam(RADAR.settings,sp.antennaRinging.clipStart,sp.antennaRinging.clipEnd); 
end

%% generate data matrix
rawData    = reshape(rawData, [radParam.Ns,radParam.Np]);

% save(['CalData/' datestr(now) '.mat'], 'rawData')


%% preprocessing and calibration
% mask out interference frequencies
prepData = FeuerWeRR_preprocessing(rawData, RADAR.settings, sp);

% gain/phase calibration
calData = IQcalib(conj(prepData));

% apply window
winData = applyWindow(calData,RADAR.settings,sp);

%% range DFT and detection/interpolation in range direction
% apply dft
rangeSpec = fft(winData,[],1);

% incoherent sum & clip
clipRangeIncoh=sum(abs(rangeSpec),2);
clipRangeIncoh=clipRangeIncoh(radParam.clipfirstBin:radParam.cliplastBin);

% figure(222);
% plot(clipRangeIncoh);
% % pause(2);

% detect targets range (CFAR)
CFAR_binaryMask = OS_CFAR_range(clipRangeIncoh,sp.cfar.numberGuardCells,...
    sp.cfar.numberTrainingCells,sp.cfar.probabilityFalseAlarm,radParam.Np);

% extract peak indices from CFAR mask
[rangeSpecMaxPos_all]=clusterCFARMask(clipRangeIncoh,CFAR_binaryMask);
% remove the peaks in the spectrum which are due to IQ-imbalance
rangeSpecMaxPos=removeImagePeaks(rangeSpecMaxPos_all,...
    clipRangeIncoh(rangeSpecMaxPos_all),...
    radParam.clipfirstBin,...
    radParam.Ns);

% peak interpolation
[peakPos,~]=peakInterp(rangeSpecMaxPos,clipRangeIncoh);

% convert to metric units
rangeDetections=(radParam.clipfirstBin+peakPos-2)*radParam.c/(2*radParam.B); 

%% velocity DFT and detection/interpolation in Doppler direction
targetList=[];
%for every range-target: try to find peaks in velocity spectrum
for actRangeTarg=1:numel(rangeSpecMaxPos)   
    % calculate velocity spectrum for current range detection
    actRangeBin=rangeSpecMaxPos(actRangeTarg);
    actVelSpec=abs(fftshift(fft(rangeSpec(radParam.clipfirstBin+actRangeBin-1,:))));
    
    % find targets velocity (CFAR)
    CFAR_binaryMask=OS_CFAR_velocity(actVelSpec,sp.cfar.numberGuardCells,...
        sp.cfar.numberTrainingCells,sp.cfar.probabilityFalseAlarm);
    if any(CFAR_binaryMask)
        % extract peak indices from CFAR mask
        velSpecMaxPos=clusterCFARMask(actVelSpec,CFAR_binaryMask);
        % peak interpolation
        [peakPos,peakAmpl]=peakInterp(velSpecMaxPos,actVelSpec);
        % convert to metric units
        velDetections=(peakPos-radParam.Np/2-1)*...
            radParam.c/(2*radParam.fc*radParam.Tp*radParam.Np);
        actTargets=[peakAmpl,...
            repmat(rangeDetections(actRangeTarg),numel(velDetections),1),...
            velDetections];
    else  
        actTargets=[];
    end
    
    % targetList: [amplitude, range, velocity]
    targetList=[actTargets;targetList]; %#ok : targets are detected dynamically; I have no better idea how to do that
end

% filter out all ranges higher than 10m
targetList = targetList(targetList(:,2) <10,:);
