clear variables
clear workspace
clear

%%Adding libraries and loading the saved variables
curDir   = pwd
mainDir  = fileparts(curDir);

globalFunctions =['..' filesep 'globalFunctions']
addpath(genpath(globalFunctions));
addpath(genpath('functions'));

masterVariables ='ROSvariables.mat';
load(masterVariables);

%%Create a Node, its corresponding publisher, subscriber, create call back
%%function and publishing function
disp(masterHost);
node = createNode('RadarSignalProcessor_node','http://localhost:11311');
radarTopic = '/RadarTargetList';


radarMsgType = 'iss_messages/radar_target';
global publisher;
% publisher = robotics.ros.Publisher(node,radarTopic,radarMsgType);
publisher = rospublisher(radarTopic,radarMsgType);

%%Subscription the topic name is very important
subscribeTopic_radar = '/feuerwerr_siso_demo/FeuerRadarRaw';
sub_image = subscribeTo(node,subscribeTopic_radar,@subscribeCallback);

% pause(7200);