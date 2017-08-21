function [fusionPts,Cluster] = FusionRadarIR(targets,pts2D_CAM)
%------------------------- Description -----------------------------------%
% This function performs DBSCAN clustering of the SfM points in the first
% step. In the second step the Cluster centers are fused with the last
% available targetlist based on the Munkres-algorithm.
%--------------------------- Input ---------------------------------------%
% targets..........actual targetlist [amplitude range velocity]
% pts2D_CAM........SfM points in pixel [px py]
% pts3D............SfM points in world coordinates [x y z]
%--------------------------- Output --------------------------------------%
% fusionPts.......fusion points [px py z]
% Cluster.........Cluster structure [assigment Centers], Centers in [px py z]

%% 1) Clustering of 3D points
% clustering settings
clusteringMahalCov= [20^2  0     0  ;... % 1. Eintrag: pixel x
                      0  20^2    0  ;... % 2. Eintrag: pixel y
                      0   0   0.4^2];    % 3. Eintrag: Range in m                  
epsilon=2;
minPoints=10;
% DBSCAN-Clustering
if ~isempty(pts3D) && ~isempty(pts2D_CAM)
    Cluster.assignment=DBSCAN([pts2D_CAM,pts3D(:,3)],epsilon,minPoints,clusteringMahalCov);
    Cluster.centers=zeros(max(Cluster.assignment),3);
    for actCluster=1:max(Cluster.assignment)
        Cluster.centers(actCluster,1)=median(pts2D_CAM(Cluster.assignment==actCluster,1));
        Cluster.centers(actCluster,2)=median(pts2D_CAM(Cluster.assignment==actCluster,2));
        Cluster.centers(actCluster,3)=median(pts3D(Cluster.assignment==actCluster,3));
    end
else
     Cluster.centers = [];        
end

%% 2) Fusion of IR-image and Radar targetlist
if ~isempty(targets) && ~isempty(Cluster.centers)
    GatingTFusion = 1;
    
    %calculate Distance matrix between clusters and radar
    distMtx = pdist2(Cluster.centers(:,3),targets(:,2),'squaredeuclidean');
    
    % Gating 
    distMtx(distMtx>GatingTFusion)=inf;
    invalidCols=~(any(distMtx~=inf));
    distMtx(:,invalidCols)=[];
    targets(invalidCols,:)=[];
    
    %Assign with Munkres-Algorithm
    assignment = assignmentoptimal(distMtx');
    
    %remove unassigned targets
    targets(assignment==0,:)=[];
    assignment(assignment==0)=[];
    
    if ~isempty(assignment)
        fusionPts=[Cluster.centers(assignment,1),Cluster.centers(assignment,2),targets(:,2)];
    else
        fusionPts = [];
    end
else
   fusionPts = [];
end
end