function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Initiate the Radar Signal Processing
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

realVector = message.IQmsg.Data(1:1000*160)/400;
imagVector = message.IQmsg.Data((1000*160+1):length(message.IQmsg.Data))/400;
realData = reshape(realVector, 1000,160);
imgData = reshape(imagVector, 1000,160);
rawData = complex(double(realData), double(imgData));
[targetList] = SignalProcessing(rawData);

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
 disp(sendMessage.RangeEstimate);
end





% realData = reshape(message.RealData, 1000,160);
% imgData = reshape(message.ImgData,1000,160);
% rawData = complex(double(realData), double(imgData));
% [targetList] = SignalProcessing(rawData);
% disp(targetList(:,2));
% 
% TargetListSave{count} = targetList;
% count = count+1;
% save('rspVar.mat','TargetListSave','-append');
% 
% if((message.SeqID == 1)||(isempty(sendMessage.SeqID )))
%     sendMessage.SeqID = 1;
% else
%     sendMessage.SeqID = sendMessage.SeqID+1;
% end

% sendMessage.RADARhwTimeStamp = message.HwTimeStamp;
% sendMessage.RangeEstimate = targetList(:,2);
% sendMessage.VelocityEstimate = targetList(:,3);
% sendMessage.Amplitude = targetList(:,1);
% % disp(message);
% disp(sendMessage.RangeEstimate);
% send(publisher,sendMessage);

% end

