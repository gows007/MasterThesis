package visualization;

public interface FeuerIRImage extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/FeuerIRImage";
  static final java.lang.String _DEFINITION = "sensor_msgs/Image irimage\ntime feuertime\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  sensor_msgs.Image getIrimage();
  void setIrimage(sensor_msgs.Image value);
  org.ros.message.Time getFeuertime();
  void setFeuertime(org.ros.message.Time value);
}
