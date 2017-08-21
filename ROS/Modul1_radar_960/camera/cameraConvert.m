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


node = createNode('Optris_With_Time','http://localhost:11311');
radarTopic = '/feuerwerr_siso_demo/FeuerIRImage';


radarMsgType = 'sensor_synch_drivers/FeuerIRImage';
global publisher;
% publisher = robotics.ros.Publisher(node,radarTopic,radarMsgType);
publisher = rospublisher(radarTopic,radarMsgType);

%%Subscription the topic name is very important
subscribeTopic_optris = '/feuerwerr_siso_demo/image_raw';
sub_image = subscribeTo(node,subscribeTopic_optris,@subscribeCallback);