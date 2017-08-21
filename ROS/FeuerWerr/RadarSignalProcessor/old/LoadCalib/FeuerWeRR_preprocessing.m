function [ prepData ] = FeuerWeRR_preprocessing( rawData, settings, sp )
%This function applies a preprocessing to the raw signal. The preprocessing
%is specific for the FeuerWeRR-project.
%   
%   The preprocessing contains the following steps:
%   1. Subtraction of a background (average of CalData measurements)
%   2. Application of a mask in frequency domain to remove the frequency
%   peaks caused by interfering signals (e.g. DC-DC converters). The mask
%   is obtained by calibration measurments (CalData)
%   3. Nulling of the low-frequency components of the signal to remove the
%   antenna ringing
%   
%   Input arguments:
%       rawData     := the radar raw data
%       settings    := structure containing the modulation parameters
%       sp          := structure containing signal processing parameters
%
%   Output arguments:
%       prepData    := the data after the FeuerWeRR-specific preprocessing 
%                      for further signal processing
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-20:  created
%   v1.1: 2017-04-25:  MU:frequency shift removed, windowing moved to 
%                      separate function


%% load preprocessing variables
persistent radParam baseline interferenceMask %#ok, baseline and inteferenceMask are not set, but loaded from file

if isempty(baseline)
    radParam=getRadarParam(settings,sp.antennaRinging.clipStart,sp.antennaRinging.clipEnd);
    load('initCal') % this file contains the baseline
    baseline = mean(baseline,2);
    load('interferenceMask2') % this file contains the mask to remove interfering frequencies
end

%% 1. remove the baseline
x=rawData-repmat(baseline,1,size(rawData,2));

%% 2. mask out interfering frequencies
maskedSpec=fft2(x).*interferenceMask;
maskedData=ifft2(maskedSpec);

%% 3. null the frequencies around dc to remove the antenna ringing
nullSpec=fft(maskedData,[],1);
nullSpec([1:radParam.clipfirstBin,radParam.cliplastBin:end],:)=0;

prepData=ifft(nullSpec,[],1);


end

