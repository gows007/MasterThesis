package optris_drivers;

public interface Temperature extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "optris_drivers/Temperature";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 temperature_flag\nfloat32 temperature_box\nfloat32 temperature_chip\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getTemperatureFlag();
  void setTemperatureFlag(float value);
  float getTemperatureBox();
  void setTemperatureBox(float value);
  float getTemperatureChip();
  void setTemperatureChip(float value);
}
