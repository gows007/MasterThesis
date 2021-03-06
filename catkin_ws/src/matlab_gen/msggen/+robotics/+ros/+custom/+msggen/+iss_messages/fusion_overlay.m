classdef fusion_overlay < robotics.ros.Message
    %fusion_overlay MATLAB implementation of iss_messages/fusion_overlay
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'iss_messages/fusion_overlay' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'df8e1f6b30f762c4e9c76e7e87f4cfef' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
        TimeClass = robotics.ros.msg.internal.MessageFactory.getClassForType('time') % Dispatch to MATLAB class for message type time
    end
    
    properties (Dependent)
        Header
        ImageFeuertime
        FusionPoints
        Range
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'ImageFeuertime', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'FusionPoints', 'Header', 'ImageFeuertime', 'Range'} % List of non-constant message properties
        ROSPropertyList = {'fusionPoints', 'header', 'image_feuertime', 'range'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = fusion_overlay(msg)
            %fusion_overlay Construct the message object fusion_overlay
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'fusion_overlay', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function imagefeuertime = get.ImageFeuertime(obj)
            %get.ImageFeuertime Get the value for property ImageFeuertime
            if isempty(obj.Cache.ImageFeuertime)
                obj.Cache.ImageFeuertime = feval(obj.TimeClass, obj.JavaMessage.getImageFeuertime);
            end
            imagefeuertime = obj.Cache.ImageFeuertime;
        end
        
        function set.ImageFeuertime(obj, imagefeuertime)
            %set.ImageFeuertime Set the value for property ImageFeuertime
            validateattributes(imagefeuertime, {obj.TimeClass}, {'nonempty', 'scalar'}, 'fusion_overlay', 'ImageFeuertime');
            
            obj.JavaMessage.setImageFeuertime(imagefeuertime.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ImageFeuertime)
                obj.Cache.ImageFeuertime.setJavaObject(imagefeuertime.getJavaObject);
            end
        end
        
        function fusionpoints = get.FusionPoints(obj)
            %get.FusionPoints Get the value for property FusionPoints
            javaArray = obj.JavaMessage.getFusionPoints;
            array = obj.readJavaArray(javaArray, 'single');
            fusionpoints = single(array);
        end
        
        function set.FusionPoints(obj, fusionpoints)
            %set.FusionPoints Set the value for property FusionPoints
            if ~isvector(fusionpoints) && isempty(fusionpoints)
                % Allow empty [] input
                fusionpoints = single.empty(0,1);
            end
            
            validateattributes(fusionpoints, {'numeric'}, {'vector'}, 'fusion_overlay', 'FusionPoints');
            
            javaArray = obj.JavaMessage.getFusionPoints;
            array = obj.writeJavaArray(fusionpoints, javaArray, 'single');
            obj.JavaMessage.setFusionPoints(array);
        end
        
        function range = get.Range(obj)
            %get.Range Get the value for property Range
            javaArray = obj.JavaMessage.getRange;
            array = obj.readJavaArray(javaArray, 'single');
            range = single(array);
        end
        
        function set.Range(obj, range)
            %set.Range Set the value for property Range
            if ~isvector(range) && isempty(range)
                % Allow empty [] input
                range = single.empty(0,1);
            end
            
            validateattributes(range, {'numeric'}, {'vector'}, 'fusion_overlay', 'Range');
            
            javaArray = obj.JavaMessage.getRange;
            array = obj.writeJavaArray(range, javaArray, 'single');
            obj.JavaMessage.setRange(array);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.ImageFeuertime = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.FusionPoints = obj.FusionPoints;
            cpObj.Range = obj.Range;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.ImageFeuertime = copy(obj.ImageFeuertime);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.FusionPoints = strObj.FusionPoints;
            obj.Range = strObj.Range;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.ImageFeuertime = feval([obj.TimeClass '.loadobj'], strObj.ImageFeuertime);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.FusionPoints = obj.FusionPoints;
            strObj.Range = obj.Range;
            strObj.Header = saveobj(obj.Header);
            strObj.ImageFeuertime = saveobj(obj.ImageFeuertime);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.iss_messages.fusion_overlay.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.iss_messages.fusion_overlay;
            obj.reload(strObj);
        end
    end
end
