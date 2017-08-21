function [ CFAR_binaryMask ] = OS_CFAR_velocity( velData,numberGuardCells,numberTrainingCells,P_fa)
%OS_CFAR_VELOCITY for detecting radar targets after vel fft for a single
%row of data matrix (Rayleigh noise pdf)
%   
%   For this function, we assume that velData is the absolute value of a
%   single chirp. 
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
%       velData              := the absolute value of the velocity spectrum
%       numberGuardCells     := number of guard cells
%       numberTrainingCells  := number of training cells
%       P_fa                 := desired false alarm probability
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
safetyFactor=2.5;   % non-Gaussianity

if size(velData,1)~=1 && size(velData,2)~=1 %data is 2D
    error('OS_CFAR_velocity: Data must be 1D (incoherent sum)')
end
velData=reshape(velData,1,[]);  % ensure row vector

%% 1. create matrix of neighboring input (training cells)
windowShifts=[(-(numberGuardCells+numberTrainingCells):-(numberGuardCells+1)) ,...
              ((numberGuardCells+1):(numberGuardCells+numberTrainingCells))];
          
for trainCellInd=numel(windowShifts):-1:1
    indMtx(trainCellInd,:)=circshift(1:numel(velData),windowShifts(trainCellInd),2);
end
trainingMtx=velData(indMtx);

%% 2.& 3. calculate the threshold value
sigmaVec=(median(trainingMtx,1))/sqrt(2*log(2));
thresholdVec=sqrt(-2*log(P_fa))*sigmaVec*safetyFactor;

%% 4. compare input and threshold
CFAR_binaryMask=velData>thresholdVec;

end

