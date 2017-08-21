package sensor_synch_drivers;

public interface FeuerWeRRStartAquistionRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "sensor_synch_drivers/FeuerWeRRStartAquistionRequest";
  static final java.lang.String _DEFINITION = "Header header\nbool radar_start\nbool ir_start";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  boolean getRadarStart();
  void setRadarStart(boolean value);
  boolean getIrStart();
  void setIrStart(boolean value);
}
