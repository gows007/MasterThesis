function [Obj, ps4000aEnuminfo] = GetDeviceInfo()
%% Load Configuration Information
PS4000aConfig;

%% Device Connection
% Specify serial number as 2nd argument if required.
Obj.ps4000aDeviceObj = icdevice('picotech_ps4000a_generic.mdd', '');

%% Getting Group Objects
% Signalgenerator
Obj.sigGenGroupObj = get(Obj.ps4000aDeviceObj, 'Signalgenerator');
Obj.sigGenGroupObj = Obj.sigGenGroupObj(1);

% Trigger
Obj.triggerGroupObj = get(Obj.ps4000aDeviceObj, 'Trigger');
Obj.triggerGroupObj = Obj.triggerGroupObj(1);

% Streaming
Obj.rapidObj.blockGroupObj = get(Obj.ps4000aDeviceObj, 'Rapidblock');
Obj.rapidObj.blockGroupObj = Obj.rapidObj.blockGroupObj(1);

Obj.blockGroupObj = get(Obj.ps4000aDeviceObj, 'Block');
Obj.blockGroupObj = Obj.blockGroupObj(1);