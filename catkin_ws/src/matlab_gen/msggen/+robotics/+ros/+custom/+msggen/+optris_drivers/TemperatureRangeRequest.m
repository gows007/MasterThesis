classdef TemperatureRangeRequest < robotics.ros.Message
    %TemperatureRangeRequest MATLAB implementation of optris_drivers/TemperatureRangeRequest
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'optris_drivers/TemperatureRangeRequest' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '16d7dcc9d398a75b4b07c76d6255fcff' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        TemperatureRangeMin
        TemperatureRangeMax
    end
    
    properties (Constant, Hidden)
        PropertyList = {'TemperatureRangeMax', 'TemperatureRangeMin'} % List of non-constant message properties
        ROSPropertyList = {'temperatureRangeMax', 'temperatureRangeMin'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = TemperatureRangeRequest(msg)
            %TemperatureRangeRequest Construct the message object TemperatureRangeRequest
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
        
        function temperaturerangemin = get.TemperatureRangeMin(obj)
            %get.TemperatureRangeMin Get the value for property TemperatureRangeMin
            temperaturerangemin = int16(obj.JavaMessage.getTemperatureRangeMin);
        end
        
        function set.TemperatureRangeMin(obj, temperaturerangemin)
            %set.TemperatureRangeMin Set the value for property TemperatureRangeMin
            validateattributes(temperaturerangemin, {'numeric'}, {'nonempty', 'scalar'}, 'TemperatureRangeRequest', 'TemperatureRangeMin');
            
            obj.JavaMessage.setTemperatureRangeMin(temperaturerangemin);
        end
        
        function temperaturerangemax = get.TemperatureRangeMax(obj)
            %get.TemperatureRangeMax Get the value for property TemperatureRangeMax
            temperaturerangemax = int16(obj.JavaMessage.getTemperatureRangeMax);
        end
        
        function set.TemperatureRangeMax(obj, temperaturerangemax)
            %set.TemperatureRangeMax Set the value for property TemperatureRangeMax
            validateattributes(temperaturerangemax, {'numeric'}, {'nonempty', 'scalar'}, 'TemperatureRangeRequest', 'TemperatureRangeMax');
            
            obj.JavaMessage.setTemperatureRangeMax(temperaturerangemax);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.TemperatureRangeMin = obj.TemperatureRangeMin;
            cpObj.TemperatureRangeMax = obj.TemperatureRangeMax;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.TemperatureRangeMin = strObj.TemperatureRangeMin;
            obj.TemperatureRangeMax = strObj.TemperatureRangeMax;
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
            
            strObj.TemperatureRangeMin = obj.TemperatureRangeMin;
            strObj.TemperatureRangeMax = obj.TemperatureRangeMax;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.optris_drivers.TemperatureRangeRequest.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.optris_drivers.TemperatureRangeRequest;
            obj.reload(strObj);
        end
    end
end
