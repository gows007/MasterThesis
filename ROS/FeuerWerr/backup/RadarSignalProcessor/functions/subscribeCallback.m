function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Initiate the Radar Signal Processing
%   Get data from radar sensor and determine the target list
global publisher;
persistent sendMessage;
% disp('Message Received');
if(isempty(sendMessage))
    sendMessage = rosmessage(publisher);
end
realVector = message.IQmsg.Data(1:1000*160);
imagVector = message.IQmsg.Data((1000*160+1):length(message.IQmsg.Data));
realData = vec2mat(realVector, 1000).';
imgData = vec2mat(imagVector, 1000).';
rawData = complex(double(realData), -double(imgData));
[targetList] = signalProcessing(rawData);

if((sendMessage.Header.Seq == 0)||(isempty(sendMessage.Header.Seq )))
    sendMessage.Header.Seq = 1;
else
    sendMessage.Header.Seq = sendMessage.Header.Seq+1;
end

sendMessage.RadarFeuertime = message.Feuertime;
if isempty(targetList)
    sendMessage.RangeEstimate = [];
    sendMessage.VelocityEstimate = [];
    sendMessage.Amplitude = [];
else
    sendMessage.RangeEstimate = targetList(:,2);
    sendMessage.VelocityEstimate = targetList(:,3);
    sendMessage.Amplitude = targetList(:,1);
end

send(publisher,sendMessage);
%  disp(sendMessage.SeqID );
% disp(sendMessage.RangeEstimate);
end
