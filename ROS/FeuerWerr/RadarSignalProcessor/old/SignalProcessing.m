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
%   v1.0: 2017-04-24: created
%   v2.0: 2017-05-06: changed for ROS implementation

%% Signal Processing definitions and settings
% antenna ringing
sp.antennaRinging.clipStart=.02;   % * maximum range
sp.antennaRinging.clipEnd=.98;     % * maximum range
% CFAR:
sp.cfar.numberGuardCells=2;
sp.cfar.numberTrainingCells=10;
sp.cfar.probabilityFalseAlarm=1e-7;

% load current RADAR settings
RADAR = load('settings.mat');

% set fft mode
fftw('planner','patient');  

% add sub-functions
addpath(genpath('DetEsti'));
addpath(genpath('LoadCalib'));

%% Init
persistent radParam
if isempty(radParam)
    % get all radar-relevant information
    radParam=getRadarParam(RADAR.settings,sp.antennaRinging.clipStart,sp.antennaRinging.clipEnd); 
end

% %% generate data matrix
% Data      = double(rawData.B) + 1i * double(rawData.C); 
% DataIn    = reshape(Data, [radParam.Ns,radParam.Np]);

% DataIn = rawData;

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
clipRangeIncohClip=clipRangeIncoh(radParam.clipfirstBin:radParam.cliplastBin);

% detect targets range (CFAR)
CFAR_binaryMask = OS_CFAR_range(clipRangeIncohClip,sp.cfar.numberGuardCells,...
                                sp.cfar.numberTrainingCells,...
                                sp.cfar.probabilityFalseAlarm,radParam.Np);
                            
% extract peak indices from CFAR mask
[rangeSpecMaxPos_all]=clusterCFARMask(clipRangeIncohClip,CFAR_binaryMask);

% remove the peaks in the spectrum which are due to IQ-imbalance
rangeSpecMaxPos=removeImagePeaks(rangeSpecMaxPos_all,...
                                clipRangeIncohClip(rangeSpecMaxPos_all),...
                                radParam.clipfirstBin,radParam.Ns);
% peak interpolation
[peakPos,~]=peakInterp(rangeSpecMaxPos,clipRangeIncohClip);

% convert to metric units
rangeDetections=(radParam.clipfirstBin+peakPos-2)*radParam.c/(2*radParam.B); 

%% velocity DFT and detection/interpolation in Doppler direction
targetList=[];
%for every range-target: try to find peaks in velocity spectrum
for actRangeTarg=1:numel(rangeSpecMaxPos)   
    % calculate velocity spectrum for current range detection
    actRangeBin=rangeSpecMaxPos(actRangeTarg);
    actVelSpec = abs(fftshift(fft(rangeSpec(radParam.clipfirstBin+actRangeBin-1,:))));
    % find targets velocity (CFAR)
    CFAR_binaryMask=OS_CFAR_velocity(actVelSpec,sp.cfar.numberGuardCells,...
                                     sp.cfar.numberTrainingCells,...
                                     sp.cfar.probabilityFalseAlarm);
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