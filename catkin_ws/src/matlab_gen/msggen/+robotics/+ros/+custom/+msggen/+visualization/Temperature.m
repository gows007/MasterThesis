classdef Temperature < robotics.ros.Message
    %Temperature MATLAB implementation of visualization/Temperature
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'visualization/Temperature' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '4ca2cd25d02107fe9171609096a539e1' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        TemperatureFlag
        TemperatureBox
        TemperatureChip
    end
    
    properties (Access = protected)
        Cache = struct('Header', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Header', 'TemperatureBox', 'TemperatureChip', 'TemperatureFlag'} % List of non-constant message properties
        ROSPropertyList = {'header', 'temperature_box', 'temperature_chip', 'temperature_flag'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Temperature(msg)
            %Temperature Construct the message object Temperature
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
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'Temperature', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function temperatureflag = get.TemperatureFlag(obj)
            %get.TemperatureFlag Get the value for property TemperatureFlag
            temperatureflag = single(obj.JavaMessage.getTemperatureFlag);
        end
        
        function set.TemperatureFlag(obj, temperatureflag)
            %set.TemperatureFlag Set the value for property TemperatureFlag
            validateattributes(temperatureflag, {'numeric'}, {'nonempty', 'scalar'}, 'Temperature', 'TemperatureFlag');
            
            obj.JavaMessage.setTemperatureFlag(temperatureflag);
        end
        
        function temperaturebox = get.TemperatureBox(obj)
            %get.TemperatureBox Get the value for property TemperatureBox
            temperaturebox = single(obj.JavaMessage.getTemperatureBox);
        end
        
        function set.TemperatureBox(obj, temperaturebox)
            %set.TemperatureBox Set the value for property TemperatureBox
            validateattributes(temperaturebox, {'numeric'}, {'nonempty', 'scalar'}, 'Temperature', 'TemperatureBox');
            
            obj.JavaMessage.setTemperatureBox(temperaturebox);
        end
        
        function temperaturechip = get.TemperatureChip(obj)
            %get.TemperatureChip Get the value for property TemperatureChip
            temperaturechip = single(obj.JavaMessage.getTemperatureChip);
        end
        
        function set.TemperatureChip(obj, temperaturechip)
            %set.TemperatureChip Set the value for property TemperatureChip
            validateattributes(temperaturechip, {'numeric'}, {'nonempty', 'scalar'}, 'Temperature', 'TemperatureChip');
            
            obj.JavaMessage.setTemperatureChip(temperaturechip);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
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
            cpObj.TemperatureFlag = obj.TemperatureFlag;
            cpObj.TemperatureBox = obj.TemperatureBox;
            cpObj.TemperatureChip = obj.TemperatureChip;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.TemperatureFlag = strObj.TemperatureFlag;
            obj.TemperatureBox = strObj.TemperatureBox;
            obj.TemperatureChip = strObj.TemperatureChip;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
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
            
            strObj.TemperatureFlag = obj.TemperatureFlag;
            strObj.TemperatureBox = obj.TemperatureBox;
            strObj.TemperatureChip = obj.TemperatureChip;
            strObj.Header = saveobj(obj.Header);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.visualization.Temperature.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.visualization.Temperature;
            obj.reload(strObj);
        end
    end
end
