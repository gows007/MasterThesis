function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Initiate the Camera Data
%   Get data from radar sensor and determine the target list
global publisher;
persistent sendMessage current_feuertime;

current_feuertime = message.TimeRef;

if(isempty(sendMessage))
    sendMessage = rosmessage(publisher);
    
    addpath(genpath('Add-Ons'))
    addpath(genpath('radarSensor'))

    load('settings_RADAR_960.mat','setting');
    % global settings Obj;
    settings = setting;
    Obj = getObject(settings);
    t = timer('ExecutionMode','fixedRate');
    % ,'Period','1');
    t.Period = 1;
    t.TimerFcn = {@streamData};
    sendMessage.Header.FrameId = 'ISS_RADAR';
    start(t);
    
end

    function streamData(hObj, eventdata)
        disp('radar Reading');
            if(isempty(sendMessage.Header.Seq))
                sendMessage.Header.Seq = 1;
            end
            % global settings Obj;
            [channelFinal, settings] = StreamData(settings, Obj);
            sendMessage.Header.Stamp = rostime('now');
            sendMessage.Feuertime = current_feuertime;
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


