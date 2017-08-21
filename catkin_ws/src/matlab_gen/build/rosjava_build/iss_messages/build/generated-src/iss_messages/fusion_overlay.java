package iss_messages;

public interface fusion_overlay extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "iss_messages/fusion_overlay";
  static final java.lang.String _DEFINITION = "Header header\ntime image_feuertime\n\nfloat32[] fusionPoints\nfloat32[] range\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  org.ros.message.Time getImageFeuertime();
  void setImageFeuertime(org.ros.message.Time value);
  float[] getFusionPoints();
  void setFusionPoints(float[] value);
  float[] getRange();
  void setRange(float[] value);
}
