function [channelInfo] = ChannelSetup(ps4000aEnuminfo)
%% Channel Setup
% All channels are enabled by default. Channel settings are changed as shown below: 
% Channel A
channelInfo(1).name             = 'A';
channelInfo(1).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_A;
channelInfo(1).enabled          = PicoConstants.TRUE;
channelInfo(1).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(1).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_1V;
channelInfo(1).analogueOffset   = 0.0;
channelInfo(1).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(1).range + 1);

% Channel B
channelInfo(2).name             = 'B';
channelInfo(2).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_B;
channelInfo(2).enabled          = PicoConstants.TRUE;
channelInfo(2).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(2).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_200MV;
channelInfo(2).analogueOffset   = 0.0;
channelInfo(2).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(2).range + 1);

% Channel C
channelInfo(3).name             = 'C';
channelInfo(3).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_C;
channelInfo(3).enabled          = PicoConstants.TRUE;
channelInfo(3).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(3).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_200MV;
channelInfo(3).analogueOffset   = 0.0;
channelInfo(3).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(3).range + 1);

% Channel D
channelInfo(4).name             = 'D';
channelInfo(4).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_D;
channelInfo(4).enabled          = PicoConstants.TRUE;
channelInfo(4).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(4).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_200MV;
channelInfo(4).analogueOffset   = 0.0;
channelInfo(4).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(4).range + 1);
 
% Channel E
channelInfo(5).name             = 'E';
channelInfo(5).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_E;
channelInfo(5).enabled          = PicoConstants.FALSE;
channelInfo(5).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(5).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_2V;
channelInfo(5).analogueOffset   = 0.0;
channelInfo(5).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(5).range + 1);

% Channel F
channelInfo(6).name             = 'F';
channelInfo(6).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_F;
channelInfo(6).enabled          = PicoConstants.FALSE;
channelInfo(6).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(6).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_2V;
channelInfo(6).analogueOffset   = 0.0;
channelInfo(6).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(6).range + 1);

% Channel G
channelInfo(7).name             = 'G';
channelInfo(7).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_G;
channelInfo(7).enabled          = PicoConstants.FALSE;
channelInfo(7).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(7).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_2V;
channelInfo(7).analogueOffset   = 0.0;
channelInfo(7).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(7).range + 1);

% Channel H
channelInfo(8).name             = 'H';
channelInfo(8).ChNumber         = ps4000aEnuminfo.enPS4000AChannel.PS4000A_CHANNEL_H;
channelInfo(8).enabled          = PicoConstants.FALSE;
channelInfo(8).coupling         = ps4000aEnuminfo.enPS4000ACoupling.PS4000A_DC;
channelInfo(8).range            = ps4000aEnuminfo.enPS4000ARange.PS4000A_2V;
channelInfo(8).analogueOffset   = 0.0;
channelInfo(8).rangeMV          = PicoConstants.SCOPE_INPUT_RANGES(channelInfo(8).range + 1);