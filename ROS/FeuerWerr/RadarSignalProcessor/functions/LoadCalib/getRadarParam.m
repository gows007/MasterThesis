function radParam=getRadarParam(settings,clipStart,clipEnd)
%GETRADARPARAM Summary of this function goes here
%   Detailed explanation goes here

radParam.B=settings.Bandwidth*1e9; 
radParam.fs=1/settings.sampleInterval;
radParam.Ns=double(settings.samplesAdd);
radParam.T=radParam.Ns/radParam.fs;
radParam.Tp=double(settings.samplesPerShot)/radParam.fs;
radParam.Np=double(settings.Pulses);
radParam.fc=94e9;
radParam.c=299792458;

radParam.rangeAxis=(0:(radParam.Ns-1)) *  radParam.c / (2*radParam.B);
radParam.velAxis=((-radParam.Np/2):(radParam.Np/2-1)) * radParam.c/(2*radParam.fc*radParam.Tp*radParam.Np);

radParam.clipfirstBin=floor(clipStart*radParam.Ns);
radParam.cliplastBin=ceil(clipEnd*radParam.Ns);
radParam.clipRangeAxis=radParam.rangeAxis(radParam.clipfirstBin:radParam.cliplastBin);

end

