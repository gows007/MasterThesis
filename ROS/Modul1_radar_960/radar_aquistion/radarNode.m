clear variables
clear workspace
clear

%%Adding libraries and loading the saved variables
curDir   = pwd;
mainDir  = fileparts(curDir);

globalFunctions =[mainDir filesep 'globalFunctions'];
measurements =[mainDir filesep 'LogData/IPA_Messung11/Radar'];
addpath(genpath(globalFunctions));
addpath(genpath(measurements));
addpath(genpath('functions'));

masterVariables ='ROSvariables.mat';
load(masterVariables,'masterHost');

global publisher;
%%Create a Node, its corresponding publisher, subscriber, create call back
%%function and publishing function

node = createNode('radar_aquistion_node',masterHost);
radarTopic = '/feuerwerr_siso_demo/FeuerRadarRaw';


% radarMsgType = 'radar_drivers/FeuerRadarRaw';
radarMsgType = 'iss_messages/IssRadarRaw';
% global publisher;
publisher = rospublisher(radarTopic,radarMsgType);


% sendMessage = rosmessage(publisher);
% 
% [realValue, imagiValue] = readfromSensor(publisher,sendMessage);

subscribeTopic_Radar = '/feuerwerr_siso_demo/FeuerTime_IR';
sub_image = subscribeTo(node,subscribeTopic_Radar,@subscribeCallback);

 pause (2*3600);


