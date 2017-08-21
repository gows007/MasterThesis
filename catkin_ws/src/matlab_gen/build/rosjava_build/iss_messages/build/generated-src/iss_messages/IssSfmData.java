package iss_messages;

public interface IssSfmData extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "iss_messages/IssSfmData";
  static final java.lang.String _DEFINITION = "# This is a message to hold data of sfm output\n\nHeader header\nstd_msgs/Float32MultiArray sfmMsg\ntime feuertime\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  std_msgs.Float32MultiArray getSfmMsg();
  void setSfmMsg(std_msgs.Float32MultiArray value);
  org.ros.message.Time getFeuertime();
  void setFeuertime(org.ros.message.Time value);
}
