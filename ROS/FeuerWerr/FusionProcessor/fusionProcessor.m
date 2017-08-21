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

node = createNode('FusionProcessor_node','http://localhost:11311');
% node = robotics.ros.Node('FusionProcessor_node','NodeHost',...
sendTopic = Topic_fusion;

sendMsgType = 'iss_messages/fusion_overlay';
global publisher;
% publisher = robotics.ros.Publisher(node,sendTopic,sendMsgType);
publisher = rospublisher(sendTopic,sendMsgType);
rostopic list

%%Creating Subscribe Function
% subscribeTopic_sfm = Topic_sfm;
subscribeTopic_rsp = Topic_rsp;
% sub_sfm = subscribeTo(node,subscribeTopic_sfm,@subscribeCallback)
sub_rsp = subscribeTo(node,subscribeTopic_rsp,@subscribeCallback);

% java.lang.Thread.sleep(2*60*60*1000);
pause(2*60*60);