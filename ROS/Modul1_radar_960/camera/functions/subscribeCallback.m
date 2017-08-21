function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Initiate the Camera Data
%   Get data from radar sensor and determine the target list
global publisher;
persistent sendMessage;
persistent count ;
if(isempty(count))
    count = 1;
end


if(isempty(sendMessage))
    sendMessage = rosmessage(publisher);
end


if((sendMessage.Header.Seq == 0)||(isempty(sendMessage.Header.Seq )))
    sendMessage.Header.Seq = 1;
    sendMessage.Header.FrameId = 'Camera_With_Time';
    
else
    sendMessage.Header.Seq = sendMessage.Header.Seq+1;
end

sendMessage.Feuertime = message.Header.Stamp;
sendMessage.Header.Stamp = rostime('now');

sendMessage.Irimage = message;


send(publisher,sendMessage);