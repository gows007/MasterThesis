classdef FeuerIRImage < robotics.ros.Message
    %FeuerIRImage MATLAB implementation of visualization/FeuerIRImage
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'visualization/FeuerIRImage' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '5d194b13f30e4de6e279a584eed93ac0' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        SensorMsgsImageClass = robotics.ros.msg.internal.MessageFactory.getClassForType('sensor_msgs/Image') % Dispatch to MATLAB class for message type sensor_msgs/Image
        TimeClass = robotics.ros.msg.internal.MessageFactory.getClassForType('time') % Dispatch to MATLAB class for message type time
    end
    
    properties (Dependent)
        Irimage
        Feuertime
    end
    
    properties (Access = protected)
        Cache = struct('Irimage', [], 'Feuertime', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Feuertime', 'Irimage'} % List of non-constant message properties
        ROSPropertyList = {'feuertime', 'irimage'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = FeuerIRImage(msg)
            %FeuerIRImage Construct the message object FeuerIRImage
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
        
        function irimage = get.Irimage(obj)
            %get.Irimage Get the value for property Irimage
            if isempty(obj.Cache.Irimage)
                obj.Cache.Irimage = feval(obj.SensorMsgsImageClass, obj.JavaMessage.getIrimage);
            end
            irimage = obj.Cache.Irimage;
        end
        
        function set.Irimage(obj, irimage)
            %set.Irimage Set the value for property Irimage
            validateattributes(irimage, {obj.SensorMsgsImageClass}, {'nonempty', 'scalar'}, 'FeuerIRImage', 'Irimage');
            
            obj.JavaMessage.setIrimage(irimage.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Irimage)
                obj.Cache.Irimage.setJavaObject(irimage.getJavaObject);
            end
        end
        
        function feuertime = get.Feuertime(obj)
            %get.Feuertime Get the value for property Feuertime
            if isempty(obj.Cache.Feuertime)
                obj.Cache.Feuertime = feval(obj.TimeClass, obj.JavaMessage.getFeuertime);
            end
            feuertime = obj.Cache.Feuertime;
        end
        
        function set.Feuertime(obj, feuertime)
            %set.Feuertime Set the value for property Feuertime
            validateattributes(feuertime, {obj.TimeClass}, {'nonempty', 'scalar'}, 'FeuerIRImage', 'Feuertime');
            
            obj.JavaMessage.setFeuertime(feuertime.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Feuertime)
                obj.Cache.Feuertime.setJavaObject(feuertime.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Irimage = [];
            obj.Cache.Feuertime = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.Irimage = copy(obj.Irimage);
            cpObj.Feuertime = copy(obj.Feuertime);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Irimage = feval([obj.SensorMsgsImageClass '.loadobj'], strObj.Irimage);
            obj.Feuertime = feval([obj.TimeClass '.loadobj'], strObj.Feuertime);
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
            
            strObj.Irimage = saveobj(obj.Irimage);
            strObj.Feuertime = saveobj(obj.Feuertime);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.visualization.FeuerIRImage.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.visualization.FeuerIRImage;
            obj.reload(strObj);
        end
    end
end
