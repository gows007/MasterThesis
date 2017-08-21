function [Obj] = getObject(settings)
%GETOBJECT Summary of this function goes here
%   Detailed explanation goes here
[Obj, ps4000aEnuminfo] = GetDeviceInfo();
connect(Obj.ps4000aDeviceObj);
%% Channel Configuration
channelInfo = ChannelSetup(ps4000aEnuminfo);

for ch = 1:8
    invoke(Obj.ps4000aDeviceObj, 'ps4000aSetChannel', (ch - 1), ...
        channelInfo(ch).enabled, channelInfo(ch).coupling, ...
        channelInfo(ch).range, channelInfo(ch).analogueOffset);
end



%% Signalgenerator Setup
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'startFrequency',    settings.sigGenFrequency);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'stopFrequency',     settings.sigGenFrequency);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'offsetVoltage',     settings.OffsetVoltage);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'peakToPeakVoltage', settings.PeakToPeakVoltage);

invoke(Obj.sigGenGroupObj, 'setSigGenArbitrary', 0, 1, settings.CorrectionFactor*settings.Waveform, 0, 0, 0, 0, 0, 0, 4, 0);
invoke(Obj.sigGenGroupObj, 'ps4000aSigGenSoftwareControl', 0);
temp              = length(settings.Waveform);
% settings.Waveform = interp1(1:temp, settings.Waveform, linspace(1, temp, samplesNumber), 'nearest');

%% Trigger Setup
invoke(Obj.triggerGroupObj, 'setSimpleTrigger', settings.TrigChannel, settings.TrigThreshold, settings.TrigDirection);

%% Setup Others
set(Obj.ps4000aDeviceObj, 'numPreTriggerSamples',  settings.numPreTrigger);     % Set the number of pre- and post-trigger samples      
set(Obj.ps4000aDeviceObj, 'numPostTriggerSamples', settings.numPostTrigger);    % If no trigger is set 'numPreTriggerSamples' is ignored

invoke(Obj.ps4000aDeviceObj, 'ps4000aMemorySegments', 1);
invoke(Obj.rapidObj.blockGroupObj, 'ps4000aSetNoOfCaptures', 1);

timebaseIndex                       = int32(settings.sampleInterval/12.5e-9) - 1;
set(Obj.ps4000aDeviceObj, 'timebase', timebaseIndex);


end

