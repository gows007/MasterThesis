function [ Sub ] = subscribeTo( node,subscribeTopic,subscribeCallback)
%SUBSCRIBETO Summary of this function goes here
%   Detailed explanation goes here
    topicList = rostopic('list');
    topicNotExists = isempty(strmatch(subscribeTopic,topicList));
    while(topicNotExists)
        %wait for it to be defined
        pause(.1);
        topicList = rostopic('list');
        topicNotExists = isempty(strmatch(subscribeTopic,topicList));
    end
    disp('Topic subscribed');
%     Sub = robotics.ros.Subscriber(node,subscribeTopic,subscribeCallback);
    Sub = rossubscriber(subscribeTopic,subscribeCallback);

end


