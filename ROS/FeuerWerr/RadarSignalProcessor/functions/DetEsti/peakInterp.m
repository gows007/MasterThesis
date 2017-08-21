function [ ind_hat,a_hat ] = peakInterp( maxInd,absSpec )
%PEAKINTERP does the peak interpolation in the spectrum absSpec around the
%detected peak bins in maxInd. 
%   
%   For this purpose, parabola interpolation is applied, using the maximum
%   in the spectrum and the left and right neighbor. 
%   !!! If no window function is applied prior to calling this function,
%   zero-padding must be applied that a parabola is a valid approximation
%   of the main beam !!!
%   In case of a blackman-harris window, the main beam spans more than 3
%   bins and the function can also be applied withou zero-padding. 
%   
%   This function works as follows:
%   1. For each target in maxInd
%   2. Do a parabola interpolation
%   
%   Input arguments:
%       maxInd  := indices of the peaks in the spectrum
%       absSpec := the absolute value of the rang eor Doppler spectrum (1D)
%
%   Output arguments:
%       ind_hat := interpolated indices of the peaks
%       a_hat   := interpolated amplitude of the peaks
%
%   (c) by Institute of Signal processing and System Theory
%       University of Stuttgart
%       Michael Ulrich
%   
%   v1.0: 2017-04-24:  created


ind_hat=zeros(numel(maxInd),1);
a_hat=zeros(numel(maxInd),1);
for i=1:numel(maxInd)
    if maxInd(i)==1
        % peak is at first bin -> no interpolation
        ind_hat(i)=1;
        a_hat(i)=absSpec(1);
    elseif maxInd(i)==numel(absSpec)
        % peak is at last bin -> no interpolation
        ind_hat(i)=numel(absSpec);
        a_hat(i)=absSpec(end);
    else
        % do peak interpolation
        funValues=reshape(absSpec((maxInd(i)-1):(maxInd(i)+1)),[],1);     %left, mid and right value
        % parabola parameters y = p(1) + p(2)*x + p(3)*x^2
        parabPar=[1 -1 1;1 0 0;1 1 1]\funValues;
        deltaPos=-parabPar(2)/(2*parabPar(3));
        
        a_hat(i)=[1,deltaPos,deltaPos^2]*parabPar;
        ind_hat(i)=maxInd(i)+deltaPos;
    end
end




% 
% %def
% sizeNeighEvalInterv=3;  %eval 4 points (>3), enough for parable fit (requires 3 points)
%         
% %init
% ind_hat=zeros(numel(maxInd),1);
% a_hat=zeros(numel(maxInd),1);
% %calc
% if isVel
%     spec_zp=sum(abs(fftshift(fft(conj([data;zeros(size(data,1)*(sizeNeighEvalInterv-1),size(data,2))]),[],1))),2).';
% else
%     spec_zp=sum(abs(fft(conj([data;zeros(size(data,1)*(sizeNeighEvalInterv-1),size(data,2))]),[],1)),2).';
% end
% N_p=numel(data);
% 
% 
% for i=1:numel(maxInd)
%     if maxInd(i)==1
%         ind_hat(i)=1;
%         a_hat(i)=spec_zp(1);
%     elseif maxInd(i)==numel(data)
%         ind_hat(i)=numel(data);
%         a_hat(i)=spec_zp(end);
%     else
% 
%         %% DFT approx
%         
%         realMaxInd=maxInd(i)+firstBin-1;
%         % spec_zp=abs(fft([data zeros(1,size(data,2)*(sizeNeighEvalInterv-1))]));
%         fineSpace=(realMaxInd-2)*sizeNeighEvalInterv+1:realMaxInd*sizeNeighEvalInterv+1;
%         fineSpec=spec_zp(fineSpace);
%         [max_Amp,fineMaxInd]=max(fineSpec);
%         maxIndFine=fineSpace(fineMaxInd);
% 
%         if maxIndFine>1&&maxIndFine<N_p*sizeNeighEvalInterv-1&&fineMaxInd>1&&fineMaxInd<numel(fineSpace)-1
%             %% Parab approx
%             parabPar=[1 -1 1;1 0 0;1 1 1]\(spec_zp([maxIndFine-1,maxIndFine,maxIndFine+1])');
%             deltaPos=-parabPar(2)/(2*parabPar(3));
%             max_Amp=[1,deltaPos,deltaPos^2]*parabPar;
%             if max_Amp<0
%                 disp('stop')
%             end
%         else
%             deltaPos=0;
%         end
% 
%         realmaxpos=(maxIndFine-1+deltaPos)/(sizeNeighEvalInterv)+1;
%         ind_hat(i)=realmaxpos-firstBin+1;
%         a_hat(i)=max_Amp;
%     end
% end
% 
% end
% 
% % %2 more points to left and right required, assume maximum is at edge
% % fineSpace=(realMaxInd-1-.5-2/sizeNeighEvalInterv:1/sizeNeighEvalInterv:realMaxInd-1.5-1/sizeNeighEvalInterv+1+2/sizeNeighEvalInterv)';
% % DFT_mtx=(exp(-2i*pi/N_p)).^(fineSpace*(N_p-1:-1:0));
% % fineSpec=abs(DFT_mtx*data');
% % [max_Amp,maxIndFine]=max(fineSpec);
% % if maxIndFine>1&&maxIndFine<numel(fineSpec)-1
% %     %% Parab approx
% %     parabPar=[1 -1 1;1 0 0;1 1 1]\(fineSpec([maxIndFine-1,maxIndFine,maxIndFine+1]));
% %     deltaFinePos=-parabPar(2)/(2*parabPar(3));
% %     max_Amp=[1,deltaFinePos,deltaFinePos^2]*parabPar;
% % else
% %     deltaFinePos=0;
% % end
% % max_pos=fineSpace(maxIndFine)+deltaFinePos/sizeNeighEvalInterv-firstBin+1;
% end