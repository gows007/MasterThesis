function subscribeCallback(~, message)
%SUBSCRIBECALLBACK Summary of this function goes here
%   Detailed explanation goes here
global publisher;
persistent sendMessage imuFlag dPos dAtt;

if(isempty(sendMessage))
    sendMessage = rosmessage(publisher);
    sendMessage.Header.FrameId = 'SfM_Messages';
end

if((sendMessage.Header.Seq == 0)||(isempty(sendMessage.Header.Seq )))
    sendMessage.Header.Seq = 1;
    sendMessage.Header.FrameId = 'Fusion Messages';
end

if (strcmpi(message.MessageType,'sensor_synch_drivers/FeuerWeRRImuMsg')==1)
    %Do Something with IMU data
    imuFlag = 1;
    dPos = 0;
    dAtt = 0;
    
elseif (strcmpi(message.MessageType,'sensor_synch_drivers/FeuerIRImage')==1)
   
    %Do Something with Image Data
    %%Call structure for motion here
    if(imuFlag == 1)
        imuFlag = 0;
        sendMessage.Feuertime = message.Feuertime;
        sendMessage.Header.Seq = sendMessage.Header.Seq + 1;
        
        load('cameraParams.mat');
        image = readImage(message.Irimage);

        imageData = rgb2gray(undistortImage(image,cameraParams));
        flipimage = flipud(imageData);
        
        %Call SfM function
        
        sendMessage.Header.Stamp = rostime('now');
        
        
    end
    
    %%Display Image
%     figure(100);
%     set(gcf, 'Position', [100, 100, 100, 100]);
%     imshow(flipimage);

end




end

