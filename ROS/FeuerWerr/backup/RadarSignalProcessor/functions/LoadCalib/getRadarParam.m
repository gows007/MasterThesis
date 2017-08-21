function radParam=getRadarParam(clipStart,clipEnd)
%GETRADARPARAM Summary of this function goes here
%   Detailed explanation goes here

radParam.B=3e9;                 % Bandwidth
radParam.Ns=1000;               % # fast-time samples
radParam.Tp=200e-6;             % chirp repetition interval
radParam.T=radParam.Tp / 2;
radParam.Np=160;    		% # slow-time samples
radParam.fs=2/radParam.Tp*radParam.Ns;
radParam.fc=94e9;               % carrier frequency
radParam.c=299792458;

radParam.rangeAxis=(0:(radParam.Ns-1)) *  radParam.c / (2*radParam.B);
radParam.velAxis=((-radParam.Np/2):(radParam.Np/2-1)) * radParam.c/(2*radParam.fc*radParam.Tp*radParam.Np);

radParam.clipfirstBin=floor(clipStart*radParam.Ns);
radParam.cliplastBin=ceil(clipEnd*radParam.Ns);
radParam.clipRangeAxis=radParam.rangeAxis(radParam.clipfirstBin:radParam.cliplastBin);

end

