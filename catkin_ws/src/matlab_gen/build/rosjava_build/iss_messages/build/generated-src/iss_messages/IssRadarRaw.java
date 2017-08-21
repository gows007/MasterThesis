package iss_messages;

public interface IssRadarRaw extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "iss_messages/IssRadarRaw";
  static final java.lang.String _DEFINITION = "# This is a message to hold data from the Radar Sensor\n\nHeader header\nstd_msgs/Float32MultiArray IQmsg\ntime feuertime\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  std_msgs.Float32MultiArray getIQmsg();
  void setIQmsg(std_msgs.Float32MultiArray value);
  org.ros.message.Time getFeuertime();
  void setFeuertime(org.ros.message.Time value);
}
