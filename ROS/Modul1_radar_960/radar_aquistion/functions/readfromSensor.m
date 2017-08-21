function  [realValue, imagiValue]  = readfromSensor(publisher,sendMessage)
%READFROMSENSOR Summary of this function goes here
%   Detailed explanation goes here

addpath(genpath('Add-Ons'))
addpath(genpath('radarSensor'))

load('settings_radar.mat','setting');
% global settings Obj;
settings = setting;
Obj = getObject(settings);
t = timer('ExecutionMode','fixedRate');
% ,'Period','1');
t.Period = 1;
t.TimerFcn = {@streamData};
sendMessage.Header.FrameId = 'ISS_RADAR';
start(t);    

% [channelFinal, settings] = StreamData(settings, Obj);
% disp(int2str(length(channelFinal)));

    function streamData(hObj, eventdata)
        disp('Radar Reading');
        if(isempty(sendMessage.Header.Seq))
            sendMessage.Header.Seq = 1;
        end
        % global settings Obj;
        [channelFinal, settings] = StreamData(settings, Obj);
        sendMessage.Header.Stamp = rostime('now');
        sendMessage.Feuertime = sendMessage.Header.Stamp;
        sendMessage.Header.Seq = sendMessage.Header.Seq +1;
        disp(int2str(length(channelFinal)));

        realValue = channelFinal.B;
        imagiValue = channelFinal.D;

        RealData =reshape(realValue,1,[]);
        ImgData = reshape(imagiValue,1,[]);
        sendMessage.IQmsg.Data = [RealData ImgData];
        send(publisher,sendMessage);

    end

end
