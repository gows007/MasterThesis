function radParam=getRadarParam(settings,clipStart,clipEnd)
%GETRADARPARAM Summary of this function goes here
%   Detailed explanation goes here

radParam.B=settings.Bandwidth*1e9; %in GHz
radParam.fs=1/settings.sampleInterval;
radParam.Ns=double(settings.samplesPerShot)-double(settings.samplesAdd);
radParam.T=1/settings.sigGenFrequency * ...
    double(settings.samplesPerShot-settings.samplesAdd)/double(settings.samplesPerShot);
radParam.Tp=1/settings.sigGenFrequency;
radParam.Np=double(settings.Pulses);
radParam.fc=98e9;
radParam.c=299792458;

radParam.rangeAxis=(0:(radParam.Ns-1)) *  radParam.c / (2*radParam.B);
radParam.velAxis=((-radParam.Np/2):(radParam.Np/2-1)) * radParam.c/(2*radParam.fc*radParam.Tp*radParam.Np);

radParam.clipfirstBin=floor(clipStart*radParam.Ns);
radParam.cliplastBin=ceil(clipEnd*radParam.Ns);
radParam.clipRangeAxis=radParam.rangeAxis(radParam.clipfirstBin:radParam.cliplastBin);

end

