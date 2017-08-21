package iss_messages;

public interface radar_target extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "iss_messages/radar_target";
  static final java.lang.String _DEFINITION = "Header header\ntime radar_feuertime\n\nfloat32[] rangeEstimate\nfloat32[] velocityEstimate\nfloat32[] amplitude\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  org.ros.message.Time getRadarFeuertime();
  void setRadarFeuertime(org.ros.message.Time value);
  float[] getRangeEstimate();
  void setRangeEstimate(float[] value);
  float[] getVelocityEstimate();
  void setVelocityEstimate(float[] value);
  float[] getAmplitude();
  void setAmplitude(float[] value);
}
