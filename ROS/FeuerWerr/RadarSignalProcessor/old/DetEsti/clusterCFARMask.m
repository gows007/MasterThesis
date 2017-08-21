function [ clusterPeaks ] = clusterCFARMask( absSpec, CFARmask)
%CLUSTERCFARMASK returns the peaks from the spectrum, which are in the
%CFAR-mask.
%   
%   This function works as follows:
%   1. Select all contiguous sections where CFARmask=true
%   2. Check whether one contiguous segment contains multiple peaks
%   3. Return the maximum bins of all peaks
%   
%   Input arguments:
%       absSpec     := the 1D absolute value of the range or Doppler 
%                      spectrum
%       CFARmask    := the 1D CFAR result of the range or Doppler spectrum
%
%   Output arguments:
%       clusterPeaks := list of maximum bins
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created
%% parameters
minpeakdist = 5;    % min. distance of bins between peaks

%% 1. find the start- and end indices of the true-segments in the CFAR mask
endInds=find([0,CFARmask]-[CFARmask,0]>0)-1;
startInds=find([CFARmask,0]-[0,CFARmask]>0);


%% 2. examine every segment
clusterPeaks=zeros(1,numel(startInds));
numPeaks=0;
for actInd=1:numel(startInds)
    if startInds(actInd)==endInds(actInd)
        % special case, if segment has length 1
        numPeaks=numPeaks+1;
        clusterPeaks(numPeaks)=(startInds(actInd));
    elseif startInds(actInd)+1==endInds(actInd)
        % special case, if segment has length 2, 
        % take higher of the two values in this case
        numPeaks=numPeaks+1;
        if absSpec(startInds(actInd))>absSpec(endInds(actInd))
            clusterPeaks(numPeaks)=(startInds(actInd));
        else
            clusterPeaks(numPeaks)=(endInds(actInd));
        end
    else
        % case of a segment which has at least 3 elements, 
        % in this case we can try to find multiple peaks
        actPeaks=peakseek(absSpec(startInds(actInd):endInds(actInd)),minpeakdist); % a faster alternative to findpeaks
        actPeaks=actPeaks+startInds(actInd)-1;
        if absSpec(startInds(actInd))>absSpec(startInds(actInd)+1)
            actPeaks=[startInds(actInd) actPeaks];
        end
        if absSpec(endInds(actInd))>absSpec(endInds(actInd)-1)
            actPeaks=[actPeaks endInds(actInd)];
        end
        clusterPeaks(numPeaks+1:numPeaks+numel(actPeaks))=actPeaks(:);
        numPeaks=numPeaks+numel(actPeaks);
    end
end
end

function [locs, pks]=peakseek(x,minpeakdist,minpeakh)
% Alternative to the findpeaks function.  This thing runs much much faster.
% It really leaves findpeaks in the dust.  It also can handle ties between
% peaks.  Findpeaks just erases both in a tie.  Shame on findpeaks.
%
% x is a vector input (generally a timecourse)
% minpeakdist is the minimum desired distance between peaks (optional, defaults to 1)
% minpeakh is the minimum height of a peak (optional)
%
% (c) 2010
% Peter O'Connor
% peter<dot>ed<dot>oconnor .AT. gmail<dot>com

if size(x,2)==1, x=x'; end

% Find all maxima and ties
locs=find(x(2:end-1)>=x(1:end-2) & x(2:end-1)>=x(3:end))+1;

if nargin<2, minpeakdist=1; end % If no minpeakdist specified, default to 1.

if nargin>2 % If there's a minpeakheight
    locs(x(locs)<=minpeakh)=[];
end

if minpeakdist>1
    while 1

        del=diff(locs)<minpeakdist;

        if ~any(del), break; end

        pks=x(locs);

        [garb, mins]=min([pks(del) ; pks([false del])]); %#ok<ASGLU>

        deln=find(del);

        deln=[deln(mins==1) deln(mins==2)+1];

        locs(deln)=[];

    end
end

if nargout>1,
    pks=x(locs);
end


end