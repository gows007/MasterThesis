package visualization;

public interface fusion_overlay extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/fusion_overlay";
  static final java.lang.String _DEFINITION = "uint32 seqID\nuint32 imageHwTimeStamp\nfloat32[] fusionPoints\nfloat32[] range\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  int getSeqID();
  void setSeqID(int value);
  int getImageHwTimeStamp();
  void setImageHwTimeStamp(int value);
  float[] getFusionPoints();
  void setFusionPoints(float[] value);
  float[] getRange();
  void setRange(float[] value);
}
