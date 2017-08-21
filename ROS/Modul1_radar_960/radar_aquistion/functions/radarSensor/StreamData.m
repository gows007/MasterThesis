function [channelFinal, settings] = StreamData(settings, Obj)

invoke(Obj.sigGenGroupObj, 'ps4000aSigGenSoftwareControl', 1);
invoke(Obj.blockGroupObj,  'runBlock', 0);

[~, ~, channelAFinal, channelBFinal, ~, channelDFinal] = ...
    invoke(Obj.rapidObj.blockGroupObj, 'getRapidBlockData', 1, 1, 0);

% cut short section from beginning
section    = channelAFinal(1:2*settings.samplesPerShot)'/1000;                                  
difference = length(section) - length(settings.Waveform);
temp       = zeros(1, difference);

% mean squared error
for i = 1:difference
    temp(i) = -sum((section(i:i+length(settings.Waveform)-1) - settings.Waveform).^2);          
end

% determin beginning of transmitting
[~, peakPos] = ...
    findpeaks(temp,'MinPeakDistance',length(temp)/2,'MinPeakHeight',-peak2peak(temp)/2);        
peakPos      = peakPos(1);

% number of recorded Pulses
Pulses = min(fix((length(channelAFinal) - peakPos) / settings.samplesPerShot), settings.Pulses);  
        
channelFinal.A = reshape(channelAFinal(peakPos:peakPos+(Pulses*settings.samplesPerShot)-1),...
    [settings.samplesPerShot, settings.Pulses]);
channelFinal.B = reshape(channelBFinal(peakPos:peakPos+(Pulses*settings.samplesPerShot)-1),...
    [settings.samplesPerShot, settings.Pulses]);
channelFinal.D = reshape(channelDFinal(peakPos:peakPos+(Pulses*settings.samplesPerShot)-1),...
    [settings.samplesPerShot, settings.Pulses]);

channelFinal.A(end-settings.samplesAdd+1:end,:) = [];
channelFinal.B(end-settings.samplesAdd+1:end,:) = [];
channelFinal.D(end-settings.samplesAdd+1:end,:) = [];

settings.Ymin = 1.05 * min(structfun(@(x)min(x(:)),channelFinal));
settings.Ymax = 1.05 * max(structfun(@(x)max(x(:)),channelFinal));

end