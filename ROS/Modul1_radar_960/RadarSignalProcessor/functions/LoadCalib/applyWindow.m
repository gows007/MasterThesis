function winData = applyWindow(calData,radParam,sp)
%APPLYWINDOW applies a Blackman-Harris window to the 2D-data.
%   
%   Input arguments:
%       calData     := the data to be processed
%       settings    := structure containing the modulation parameters
%       sp          := structure containing signal processing parameters
%
%   Output arguments:
%       winData    := the data after the windowing
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-25:  created

persistent window1 window2

if isempty(window1)
%     radParam=getRadarParam(settings,sp.antennaRinging.clipStart,sp.antennaRinging.clipEnd);
    window1 = blackmanharris(radParam.Ns);
    window2 = blackmanharris(radParam.Np).';
%     load('initCal') % this file contains the baseline
%     baseline=mean(baseline,2);
%     load('interferenceMask') % this file contains the mask to remove interfering frequencies
end

winData = bsxfun(@times,calData,window1);       % apply Window1
winData = bsxfun(@times,winData,window2);          % apply Window2

end

