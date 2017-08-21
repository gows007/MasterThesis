package optris_drivers;

public interface FeuerIRImage extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "optris_drivers/FeuerIRImage";
  static final java.lang.String _DEFINITION = "Header header\nsensor_msgs/Image irimage\ntime feuertime\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  sensor_msgs.Image getIrimage();
  void setIrimage(sensor_msgs.Image value);
  org.ros.message.Time getFeuertime();
  void setFeuertime(org.ros.message.Time value);
}
