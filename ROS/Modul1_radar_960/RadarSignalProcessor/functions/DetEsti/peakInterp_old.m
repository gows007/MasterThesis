function [ ind_hat,a_hat ] = peakInterp( maxInd,data,firstBin,isVel )
%PEAKINTERP Summary of this function goes here
%   Detailed explanation goes here

%def
sizeNeighEvalInterv=3;  %eval 4 points (>3), enough for parable fit (requires 3 points)
        
%init
ind_hat=zeros(numel(maxInd),1);
a_hat=zeros(numel(maxInd),1);
%calc
if isVel
    spec_zp=sum(abs(fftshift(fft(conj([data;zeros(size(data,1)*(sizeNeighEvalInterv-1),size(data,2))]),[],1))),2).';
else
    spec_zp=sum(abs(fft(conj([data;zeros(size(data,1)*(sizeNeighEvalInterv-1),size(data,2))]),[],1)),2).';
end
N_p=numel(data);


for i=1:numel(maxInd)
    if maxInd(i)==1
        ind_hat(i)=1;
        a_hat(i)=spec_zp(1);
    elseif maxInd(i)==numel(data)
        ind_hat(i)=numel(data);
        a_hat(i)=spec_zp(end);
    else

        %% DFT approx
        
        realMaxInd=maxInd(i)+firstBin-1;
        % spec_zp=abs(fft([data zeros(1,size(data,2)*(sizeNeighEvalInterv-1))]));
        fineSpace=(realMaxInd-2)*sizeNeighEvalInterv+1:realMaxInd*sizeNeighEvalInterv+1;
        fineSpec=spec_zp(fineSpace);
        [max_Amp,fineMaxInd]=max(fineSpec);
        maxIndFine=fineSpace(fineMaxInd);

        if maxIndFine>1&&maxIndFine<N_p*sizeNeighEvalInterv-1&&fineMaxInd>1&&fineMaxInd<numel(fineSpace)-1
            %% Parab approx
            parabPar=[1 -1 1;1 0 0;1 1 1]\(spec_zp([maxIndFine-1,maxIndFine,maxIndFine+1])');
            deltaFinePos=-parabPar(2)/(2*parabPar(3));
            max_Amp=[1,deltaFinePos,deltaFinePos^2]*parabPar;
            if max_Amp<0
                disp('stop')
            end
        else
            deltaFinePos=0;
        end

        realmaxpos=(maxIndFine-1+deltaFinePos)/(sizeNeighEvalInterv)+1;
        ind_hat(i)=realmaxpos-firstBin+1;
        a_hat(i)=max_Amp;
    end
end

end

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