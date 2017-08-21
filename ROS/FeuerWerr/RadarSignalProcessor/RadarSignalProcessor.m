clear variables
clear workspace
clear

%%Adding libraries and loading the saved variables
curDir   = pwd;
mainDir  = fileparts(curDir);

globalFunctions =[mainDir filesep 'globalFunctions'];
addpath(genpath(globalFunctions));
addpath(genpath('functions'));
save('rspVar.mat','');
masterVariables ='ROSvariables.mat';
load(masterVariables,'masterHost');

%%Create a Node, its corresponding publisher, subscriber, create call back
%%function and publishing function


node = createNode('RadarSignalProcessor_node','http://localhost:11311');
radarTopic = '/RadarTargetList';


radarMsgType = 'iss_messages/radar_target';
global publisher;
% publisher = robotics.ros.Publisher(node,radarTopic,radarMsgType);
publisher = rospublisher(radarTopic,radarMsgType);

%%Subscription the topic name is very important
subscribeTopic_radar = '/feuerwerr_siso_demo/FeuerRadarRaw';
sub_image = subscribeTo(node,subscribeTopic_radar,@subscribeCallback);



% node = createNode('RadarSignalProcessor_node',masterHost);
% radarTopic = '/RadarTargetList';
% 
% 
% radarMsgType = 'feuerwerr/target';
% global publisher;
% publisher = robotics.ros.Publisher(node,radarTopic,radarMsgType);
% 
% %%Subscription
% subscribeTopic_radar = '/radar_raw';
% sub_image = subscribeTo(node,subscribeTopic_radar,@subscribeCallback);
% % pause(2*60*60)
