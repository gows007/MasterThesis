function [settings, Obj] = PrepareDevice(varargin)
switch nargin                                                               % switch between developer and gui mode
    case 2
        settings = varargin{1};
        File     = varargin{2};
    case 4
        settings.sampleInterval   = varargin{1};
        settings.sigGenFrequency  = varargin{2};
        settings.Pulses           = varargin{3};
        settings.Bandwidth        = varargin{4};
        settings.TimeAddSelection = 2;
        settings.tempCurve        = 2;
        settings.sigGenMode       = 1;
        settings.CorrectionFactor = 1.09;
    case 5
        settings.sampleInterval   = varargin{1};
        settings.sigGenFrequency  = varargin{2};
        settings.Pulses           = varargin{3};
        settings.Bandwidth        = varargin{4};
        settings.tempCurve        = varargin{5};
        settings.TimeAddSelection = 2;
        settings.sigGenMode       = 1;
        settings.CorrectionFactor = 1.09;
end
%% Parameter Definition #1
settings.samplesPerShot           = int32(1 / (settings.sigGenFrequency * settings.sampleInterval));
sigGenRes                         = 4096;
switch settings.TimeAddSelection
    case 1
        settings.samplesAdd       = sigGenRes;
        samplesNumber    = settings.samplesPerShot*2;
    case 2
        settings.samplesAdd       = sigGenRes/2;
        samplesNumber    = floor(settings.samplesPerShot*1.5);
    case 3
        settings.samplesAdd       = sigGenRes/4;
        samplesNumber    = floor(settings.samplesPerShot*1.25);
    case 4
        settings.samplesAdd       = sigGenRes/8;
        samplesNumber    = floor(settings.samplesPerShot*1.125);
    case 5
        settings.samplesAdd       = sigGenRes/16;
        samplesNumber    = floor(settings.samplesPerShot*1.0625);
end
settings.calibrationData          = [];
settings.TrigDirection            = 4;                                      % 2 = raising, 3 = falling, 4 = raising or falling
settings.TrigChannel              = 0;                                      % 0 = A, 1 = B, 2 = C
settings.BandwidthN               = settings.Bandwidth/6;                   % normalized Bandwidth
switch settings.tempCurve
    case 1
        settings.Waveform         = load('arb20.txt');
    case 2
        settings.Waveform         = load('arb30.txt');
    case 3
        settings.Waveform         = load('arb40.txt');
    case 4
        settings.Waveform         = load('arb50.txt');
end
settings.OffsetVoltage            = 0;
temp                              = length(settings.Waveform);

%% Connect Device
[Obj, ps4000aEnuminfo] = GetDeviceInfo();
connect(Obj.ps4000aDeviceObj);

%% Channel Configuration
channelInfo = ChannelSetup(ps4000aEnuminfo);

for ch = 1:8
    invoke(Obj.ps4000aDeviceObj, 'ps4000aSetChannel', (ch - 1), ...
        channelInfo(ch).enabled, channelInfo(ch).coupling, ...
        channelInfo(ch).range, channelInfo(ch).analogueOffset);
end

%% Prepare Waveform
settings.Waveform = settings.Waveform((round((temp*(1-settings.BandwidthN))/2)+1):(round((temp*(1+settings.BandwidthN))/2)));
temp              = length(settings.Waveform);
settings.Waveform = interp1(1:temp, settings.Waveform, linspace(1, temp, sigGenRes), 'nearest');

switch settings.sigGenMode
    case 1
        temp1 = linspace(-1, 1, sigGenRes);
        settings.Waveform   = settings.Waveform(round(((temp1 - min(temp1)) ...
            * (double(sigGenRes) - 1) / peak2peak(temp1)) + 1));
        temp2 = zeros(1, settings.samplesAdd) + settings.Waveform(1);               % calculate samples to add between Pulses
        temp2(1:fix(end/2)) = settings.Waveform(end);                               %                   "
        settings.Waveform   = [settings.Waveform temp2];
    case 2
        temp1 = linspace(1, -1, sigGenRes);
        settings.Waveform   = settings.Waveform(round(((temp1 - min(temp1)) ...
            * (double(sigGenRes) - 1) / peak2peak(temp1)) + 1));
        temp2 = zeros(1, settings.samplesAdd) + settings.Waveform(1);               % calculate samples to add between Pulses
        temp2(1:fix(end/2)) = settings.Waveform(end);                               %                   "
        settings.Waveform   = [settings.Waveform temp2];
    case 3
        temp1 = linspace(-1, 1, sigGenRes);
        temp1 = tripuls(temp1, 2);
        settings.Waveform   = settings.Waveform(round(((temp1 - min(temp1)) ...
            * (double(sigGenRes) - 1) / peak2peak(temp1)) + 1));
        temp2 = zeros(1, settings.samplesAdd) + settings.Waveform(1);               % calculate samples to add between Pulses
        temp2(1:fix(end/2)) = settings.Waveform(end);                               %                   "
        settings.Waveform   = [settings.Waveform temp2];
    case 4
        temp1 = reshape(load(File), 1, []);
        temp1 = interp1(1:length(temp1), temp1, linspace(1,length(temp1),sigGenRes), 'nearest');
        settings.Waveform   = settings.Waveform(round(((temp1 - min(temp1)) ...
            * (double(sigGenRes) - 1) / peak2peak(temp1)) + 1));
        temp2 = zeros(1, settings.samplesAdd) + settings.Waveform(1);               % calculate samples to add between Pulses
        temp2(1:fix(end/2)) = settings.Waveform(end);                               %                   "
        settings.Waveform   = [settings.Waveform temp2];
end

%% Parameter Definition #2
settings.samplesAdd        = floor(settings.samplesPerShot*settings.samplesAdd / sigGenRes);
settings.samplesPerShot    = settings.samplesPerShot + settings.samplesAdd;                                                 % new samplecount per shot
settings.sigGenFrequency   = 1 / (double(settings.samplesPerShot) * settings.sampleInterval);                               % calculate new chirprepetition time
settings.PeakToPeakVoltage = 4000;
settings.TrigThreshold     = settings.OffsetVoltage + peak2peak(settings.Waveform) * 1000 * settings.BandwidthN / 4;
settings.numPreTrigger     = round((0.5 + settings.TrigThreshold / settings.PeakToPeakVoltage) * settings.samplesPerShot);
settings.numPostTrigger    = (settings.Pulses + 2) * settings.samplesPerShot;

%% Signalgenerator Setup
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'startFrequency',    settings.sigGenFrequency);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'stopFrequency',     settings.sigGenFrequency);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'offsetVoltage',     settings.OffsetVoltage);
set(Obj.ps4000aDeviceObj.Signalgenerator(1), 'peakToPeakVoltage', settings.PeakToPeakVoltage);

invoke(Obj.sigGenGroupObj, 'setSigGenArbitrary', 0, 1, settings.CorrectionFactor*settings.Waveform, 0, 0, 0, 0, 0, 0, 4, 0);
invoke(Obj.sigGenGroupObj, 'ps4000aSigGenSoftwareControl', 0);
temp              = length(settings.Waveform);
settings.Waveform = interp1(1:temp, settings.Waveform, linspace(1, temp, samplesNumber), 'nearest');

%% Trigger Setup
invoke(Obj.triggerGroupObj, 'setSimpleTrigger', settings.TrigChannel, settings.TrigThreshold, settings.TrigDirection);

%% Setup Others
set(Obj.ps4000aDeviceObj, 'numPreTriggerSamples',  settings.numPreTrigger);     % Set the number of pre- and post-trigger samples      
set(Obj.ps4000aDeviceObj, 'numPostTriggerSamples', settings.numPostTrigger);    % If no trigger is set 'numPreTriggerSamples' is ignored

invoke(Obj.ps4000aDeviceObj, 'ps4000aMemorySegments', 1);
invoke(Obj.rapidObj.blockGroupObj, 'ps4000aSetNoOfCaptures', 1);

timebaseIndex                       = int32(settings.sampleInterval/12.5e-9) - 1;
[~, timeIntervalNanoSeconds, ~]     = invoke(Obj.ps4000aDeviceObj, 'ps4000aGetTimebase2', timebaseIndex, 0);
settings.actualSampleInterval       = int32(timeIntervalNanoSeconds);
set(Obj.ps4000aDeviceObj, 'timebase', timebaseIndex);