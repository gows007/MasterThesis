function [ truePeakInd ] = removeImagePeaks( peakInd, peakAmp, firstBin, Ns )
%REMOVEIMAGEPEAKS removes the image peaks from the detections list. 
%   
%   If a target is detected at the image frequency of any other target,
%   then only the target with the higher amplitude is accepted.
%   
%   Input arguments:
%       peakInd     := the peak index
%       peakAmp     := the peak amplitude
%       firstBin    := a parameter from the range axis clipping
%       Ns          := total number of samples
%
%   Output arguments:
%       truePeakInd := a subset of peakInd, containing no image frequencies
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created
%   v1.1: 2017-04-25:  MU added: also neighboring bins are considered. 
%   v1.2: 2017-06-16:  MU: increased neighbor interval to +-2

% check input
peakAmp=reshape(peakAmp,[],1);
peakInd=reshape(peakInd,[],1);

%remove clipping and calculate image bins
noClipInd = peakInd + firstBin-2;% 
mirrorInd = Ns - noClipInd+1; % 

% also consider the neighboring bins (shift of peak due to noise)
noClipInd=[noClipInd-2,noClipInd-1,noClipInd,noClipInd+1,noClipInd+2]; 
targA=repmat(peakAmp,1,size(noClipInd,2));

% check all peaks, if a image peak is present, take only the higher one
peakValid = false(size(noClipInd));
for actPeak = 1:numel(noClipInd)
    if(any(noClipInd(actPeak)==mirrorInd))
        if targA(actPeak) > peakAmp(noClipInd(actPeak)==mirrorInd)
            peakValid(actPeak)=true;
        end
    else
        peakValid(actPeak)=true;
    end 
end
truePeakInd=peakInd(all(peakValid,2));
end

