function [ node ] = createNode( nodeName,masterName )
%CREATENODE Summary of this function goes here
%   Detailed explanation goes here
curDir   = pwd;
mainDir  = fileparts(curDir);
try
    list = rosnode('list');
catch
    disp('Initialising Master');
    masterVariables ='ROSvariables.mat';
    load(masterVariables,'masterHost');
    nodeCheck = ['/' nodeName];
    rosinit('http://localhost:11311','NodeName',nodeCheck);
    pause(1);
    list = rosnode('list');
end
disp(list);

nodeCheck = ['/' nodeName];
if(isempty(find(ismember(list,nodeCheck))))
    node = robotics.ros.Node(nodeName,masterName);
else
     node = rosnode('info',nodeName);
end

