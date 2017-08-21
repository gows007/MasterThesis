clear variables
clear workspace
clear

%%Adding libraries and loading the saved variables
curDir   = pwd;
mainDir  = fileparts(curDir);

globalFunctions =[mainDir filesep 'globalFunctions'];
addpath(genpath(globalFunctions));
addpath(genpath('functions'));

masterVariables = 'ROSvariables.mat';
load(masterVariables);


%%Create a Node, its corresponding publisher, subscriber, create call back
%%function and publishing function

node = createNode('sfm_node','http://localhost:11311');
sendTopic = '/ISS/SfM';

sendMsgType = 'iss_messages/IssSfmData';
global publisher;
% publisher = robotics.ros.Publisher(node,sendTopic,sendMsgType);
publisher = rospublisher(sendTopic,sendMsgType);

subscribeTopic_image = '/feuerwerr_siso_demo/FeuerIRImage';
subscribeTopic_imu = '/feuerwerr_siso_demo/feuerIMU';
sub_imu = subscribeTo(node,subscribeTopic_imu,@subscribeCallback);
sub_image = subscribeTo(node,subscribeTopic_image,@subscribeCallback);