function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Initiate the Radar Signal Processing
%   Get data from radar sensor and determine the target list
global publisher;
persistent sendMessage;
% persistent targetList counter;
% masterVariables = 'ROSvariables.mat';
% load(masterVariables);
if(isempty(sendMessage))
    sendMessage = rosmessage(publisher);
end

if (strcmpi(message.MessageType,'iss_messages/radar_target')==1)
    %just store all the target lists
%     targetList(counter,1,:) = message.RangeEstimate;
%     targetList(counter,2,:) = message.VelocityEstimate;
%     targetList(counter,3,:) = message.Amplitude;
    if((sendMessage.Header.Seq == 0)||(isempty(sendMessage.Header.Seq )))
        sendMessage.Header.Seq = 1;
        sendMessage.Header.FrameId = 'Fusion Messages';
    else
        sendMessage.Header.Seq = sendMessage.Header.Seq+1; 
    end
    sendMessage.Header.Stamp = rostime('now');
% No SfM so just Target list transmitted as created
    sendMessage.ImageFeuertime = message.RadarFeuertime;
    sendMessage.FusionPoints = zeros(2*numel(message.RangeEstimate),1);%repmat([0,0],numel(message.RangeEstimate),1);
    sendMessage.Range = message.RangeEstimate;
    send(publisher, sendMessage);
       
% elseif ((strcmpi(message.MessageType,Topic_sfm))==1)
%     %get the corresponding target list
%     %do the fusion and output fusion points
%     finalTarget = targetdetermination(targetList, message.ImageHwTimeStamp);
%     clear targetList;
%     counter = 1;
%     breadth = length(message.Data)/message.Size;
%     pts2D = reshape(message.Data,message.Size,breadth);
%     [fusionPts,Cluster] = FusionRadarIR(finalTarget,pts2D);
%     sendMessage.ImageHwTimeStamp = message.ImageHwTimeStamp;
%     sendMessage.FusionPoints = [fusionPts(:,1),fusionPts(:,2)];
%     sendMessage.Range = fusionPts(:,3);
%     send(publisher, sendMessage);
end



end

