package visualization;

public interface radar_target extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/radar_target";
  static final java.lang.String _DEFINITION = "uint32 seqID\nuint32 RADARhwTimeStamp\nfloat32[] rangeEstimate\nfloat32[] velocityEstimate\nfloat32[] amplitude\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  int getSeqID();
  void setSeqID(int value);
  int getRADARhwTimeStamp();
  void setRADARhwTimeStamp(int value);
  float[] getRangeEstimate();
  void setRangeEstimate(float[] value);
  float[] getVelocityEstimate();
  void setVelocityEstimate(float[] value);
  float[] getAmplitude();
  void setAmplitude(float[] value);
}
