function [ CFAR_binaryMask ] = OS_CFAR_range( incoherentRangeData,numberGuardCells,numberTrainingCells,P_fa,N_p )
%OS_CFAR_RANGE for detecting radar targets after range fft and incoherent
%integration (Gaussian noise pdf)
%   
%   For this function, we assume that incoherentRangeData is the incoherent
%   integration of multiple (Np) fast chirps. In the single chirps the 
%   noise was AWGN, then in the absolute value of a single chirp, the noise 
%   pdf is a Rayleigh distribution. The sum of multiple Raylay 
%   distributions is approximated with a Gaussian distribution whith N_p
%   times the mean and Variance of the Rayleigh distributed RVs. 
%   
%   This function works as follows:
%   1. Calculate a matrix, where each row is shifted version of the input
%   data. each shift corresponds to the shift between the cell-under-test
%   and a training cell. 
%   2. The median of this matrix is calculated to obtain the median of all
%   training cells.
%   3. The noise variance and a threshold is calculated from this median
%   value
%   4. The CFAR output is obtained by comparing the input data to this
%   threshold.
%   
%   Input arguments:
%       incoherentRangeData     := the incoherent integration (sum of
%       absolute values) of the radar range Spectrum
%       numberGuardCells        := number of guard cells
%       numberTrainingCells     := number of training cells
%       P_fa                    := desired false alarm probability
%       N_p                     := number of chirps used for the incoherent
%       integration
%
%   Output arguments:
%       CFAR_binaryMask := vector of binary values; true, if target; false
%       if not target
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created

%% check input
safetyFactor=1.5;   % account for non-Gaussianity

if size(incoherentRangeData,1)~=1 && size(incoherentRangeData,2)~=1 %data is 2D
    error('OS_CFAR_range: Data must be 1D (incoherent sum)')
end
incoherentRangeData=reshape(incoherentRangeData,1,[]);  % ensure row vector

%% 1. create matrix of neighboring input (training cells)
windowShifts=[(-(numberGuardCells+numberTrainingCells):-(numberGuardCells+1)) ,...
              ((numberGuardCells+1):(numberGuardCells+numberTrainingCells))];
          
for trainCellInd=numel(windowShifts):-1:1
    indMtx(trainCellInd,:)=circshift(1:numel(incoherentRangeData),windowShifts(trainCellInd),2);
end
trainingMtx=incoherentRangeData(indMtx);

%% 2.&3. calculate the threshold value
sigmaVec=median(trainingMtx,1)/sqrt(pi/2)/N_p;
thresholdVec=sqrt((4-pi)*N_p)*(sqrt(N_p*pi/2/(4-pi))+erfcinv(2*P_fa))*sigmaVec*safetyFactor;

%% 4. compare input and threshold
CFAR_binaryMask=incoherentRangeData>thresholdVec;

end

