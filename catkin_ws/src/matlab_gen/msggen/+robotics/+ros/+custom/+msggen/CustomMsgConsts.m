classdef CustomMsgConsts
    %CustomMsgConsts This class stores all message types
    %   The message types are constant properties, which in turn resolve
    %   to the strings of the actual types.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    properties (Constant)
        iss_messages_IssRadarRaw = 'iss_messages/IssRadarRaw'
        iss_messages_IssSfmData = 'iss_messages/IssSfmData'
        iss_messages_fusion_overlay = 'iss_messages/fusion_overlay'
        iss_messages_radar_target = 'iss_messages/radar_target'
        optris_drivers_AutoFlag = 'optris_drivers/AutoFlag'
        optris_drivers_AutoFlagRequest = 'optris_drivers/AutoFlagRequest'
        optris_drivers_AutoFlagResponse = 'optris_drivers/AutoFlagResponse'
        optris_drivers_FeuerIRImage = 'optris_drivers/FeuerIRImage'
        optris_drivers_Flag = 'optris_drivers/Flag'
        optris_drivers_Palette = 'optris_drivers/Palette'
        optris_drivers_PaletteRequest = 'optris_drivers/PaletteRequest'
        optris_drivers_PaletteResponse = 'optris_drivers/PaletteResponse'
        optris_drivers_Temperature = 'optris_drivers/Temperature'
        optris_drivers_TemperatureRange = 'optris_drivers/TemperatureRange'
        optris_drivers_TemperatureRangeRequest = 'optris_drivers/TemperatureRangeRequest'
        optris_drivers_TemperatureRangeResponse = 'optris_drivers/TemperatureRangeResponse'
        radar_drivers_FeuerRadarRaw = 'radar_drivers/FeuerRadarRaw'
        sensor_synch_drivers_FeuerIRImage = 'sensor_synch_drivers/FeuerIRImage'
        sensor_synch_drivers_FeuerWeRRImuMsg = 'sensor_synch_drivers/FeuerWeRRImuMsg'
        sensor_synch_drivers_FeuerWeRRStartAquistion = 'sensor_synch_drivers/FeuerWeRRStartAquistion'
        sensor_synch_drivers_FeuerWeRRStartAquistionRequest = 'sensor_synch_drivers/FeuerWeRRStartAquistionRequest'
        sensor_synch_drivers_FeuerWeRRStartAquistionResponse = 'sensor_synch_drivers/FeuerWeRRStartAquistionResponse'
        visualization_AutoFlag = 'visualization/AutoFlag'
        visualization_AutoFlagRequest = 'visualization/AutoFlagRequest'
        visualization_AutoFlagResponse = 'visualization/AutoFlagResponse'
        visualization_FeuerIRImage = 'visualization/FeuerIRImage'
        visualization_Flag = 'visualization/Flag'
        visualization_Palette = 'visualization/Palette'
        visualization_PaletteRequest = 'visualization/PaletteRequest'
        visualization_PaletteResponse = 'visualization/PaletteResponse'
        visualization_Temperature = 'visualization/Temperature'
        visualization_TemperatureRange = 'visualization/TemperatureRange'
        visualization_TemperatureRangeRequest = 'visualization/TemperatureRangeRequest'
        visualization_TemperatureRangeResponse = 'visualization/TemperatureRangeResponse'
        visualization_fusion_overlay = 'visualization/fusion_overlay'
        visualization_radar_target = 'visualization/radar_target'
    end
    
    methods (Static, Hidden)
        function messageList = getMessageList
            %getMessageList Generate a cell array with all message types.
            %   The list will be sorted alphabetically.
            
            persistent msgList
            if isempty(msgList)
                msgList = cell(29, 1);
                msgList{1} = 'iss_messages/IssRadarRaw';
                msgList{2} = 'iss_messages/IssSfmData';
                msgList{3} = 'iss_messages/fusion_overlay';
                msgList{4} = 'iss_messages/radar_target';
                msgList{5} = 'optris_drivers/AutoFlagRequest';
                msgList{6} = 'optris_drivers/AutoFlagResponse';
                msgList{7} = 'optris_drivers/FeuerIRImage';
                msgList{8} = 'optris_drivers/Flag';
                msgList{9} = 'optris_drivers/PaletteRequest';
                msgList{10} = 'optris_drivers/PaletteResponse';
                msgList{11} = 'optris_drivers/Temperature';
                msgList{12} = 'optris_drivers/TemperatureRangeRequest';
                msgList{13} = 'optris_drivers/TemperatureRangeResponse';
                msgList{14} = 'radar_drivers/FeuerRadarRaw';
                msgList{15} = 'sensor_synch_drivers/FeuerIRImage';
                msgList{16} = 'sensor_synch_drivers/FeuerWeRRImuMsg';
                msgList{17} = 'sensor_synch_drivers/FeuerWeRRStartAquistionRequest';
                msgList{18} = 'sensor_synch_drivers/FeuerWeRRStartAquistionResponse';
                msgList{19} = 'visualization/AutoFlagRequest';
                msgList{20} = 'visualization/AutoFlagResponse';
                msgList{21} = 'visualization/FeuerIRImage';
                msgList{22} = 'visualization/Flag';
                msgList{23} = 'visualization/PaletteRequest';
                msgList{24} = 'visualization/PaletteResponse';
                msgList{25} = 'visualization/Temperature';
                msgList{26} = 'visualization/TemperatureRangeRequest';
                msgList{27} = 'visualization/TemperatureRangeResponse';
                msgList{28} = 'visualization/fusion_overlay';
                msgList{29} = 'visualization/radar_target';
            end
            
            messageList = msgList;
        end
        
        function serviceList = getServiceList
            %getServiceList Generate a cell array with all service types.
            %   The list will be sorted alphabetically.
            
            persistent svcList
            if isempty(svcList)
                svcList = cell(7, 1);
                svcList{1} = 'optris_drivers/AutoFlag';
                svcList{2} = 'optris_drivers/Palette';
                svcList{3} = 'optris_drivers/TemperatureRange';
                svcList{4} = 'sensor_synch_drivers/FeuerWeRRStartAquistion';
                svcList{5} = 'visualization/AutoFlag';
                svcList{6} = 'visualization/Palette';
                svcList{7} = 'visualization/TemperatureRange';
            end
            
            % The message list was already sorted, so don't need to sort
            % again.
            serviceList = svcList;
        end
        
        function actionList = getActionList
            %getActionList Generate a cell array with all action types.
            %   The list will be sorted alphabetically.
            
            persistent actList
            if isempty(actList)
                actList = cell(0, 1);
            end
            
            % The message list was already sorted, so don't need to sort
            % again.
            actionList = actList;
        end
    end
end
