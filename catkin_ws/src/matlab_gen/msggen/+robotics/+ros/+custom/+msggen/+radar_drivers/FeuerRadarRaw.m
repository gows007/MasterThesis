classdef FeuerRadarRaw < robotics.ros.Message
    %FeuerRadarRaw MATLAB implementation of radar_drivers/FeuerRadarRaw
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'radar_drivers/FeuerRadarRaw' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'cc1b9ae27f0976c9b245ac4ea8fb610b' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
        StdMsgsInt16MultiArrayClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Int16MultiArray') % Dispatch to MATLAB class for message type std_msgs/Int16MultiArray
        TimeClass = robotics.ros.msg.internal.MessageFactory.getClassForType('time') % Dispatch to MATLAB class for message type time
    end
    
    properties (Dependent)
        Header
        IQmsg
        Feuertime
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'IQmsg', [], 'Feuertime', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Feuertime', 'Header', 'IQmsg'} % List of non-constant message properties
        ROSPropertyList = {'feuertime', 'header', 'IQmsg'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = FeuerRadarRaw(msg)
            %FeuerRadarRaw Construct the message object FeuerRadarRaw
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
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'FeuerRadarRaw', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function iqmsg = get.IQmsg(obj)
            %get.IQmsg Get the value for property IQmsg
            if isempty(obj.Cache.IQmsg)
                obj.Cache.IQmsg = feval(obj.StdMsgsInt16MultiArrayClass, obj.JavaMessage.getIQmsg);
            end
            iqmsg = obj.Cache.IQmsg;
        end
        
        function set.IQmsg(obj, iqmsg)
            %set.IQmsg Set the value for property IQmsg
            validateattributes(iqmsg, {obj.StdMsgsInt16MultiArrayClass}, {'nonempty', 'scalar'}, 'FeuerRadarRaw', 'IQmsg');
            
            obj.JavaMessage.setIQmsg(iqmsg.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.IQmsg)
                obj.Cache.IQmsg.setJavaObject(iqmsg.getJavaObject);
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
            validateattributes(feuertime, {obj.TimeClass}, {'nonempty', 'scalar'}, 'FeuerRadarRaw', 'Feuertime');
            
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
            obj.Cache.Header = [];
            obj.Cache.IQmsg = [];
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
            cpObj.Header = copy(obj.Header);
            cpObj.IQmsg = copy(obj.IQmsg);
            cpObj.Feuertime = copy(obj.Feuertime);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.IQmsg = feval([obj.StdMsgsInt16MultiArrayClass '.loadobj'], strObj.IQmsg);
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
            
            strObj.Header = saveobj(obj.Header);
            strObj.IQmsg = saveobj(obj.IQmsg);
            strObj.Feuertime = saveobj(obj.Feuertime);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.radar_drivers.FeuerRadarRaw.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.radar_drivers.FeuerRadarRaw;
            obj.reload(strObj);
        end
    end
end
