package optris_drivers;

public interface TemperatureRangeRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "optris_drivers/TemperatureRangeRequest";
  static final java.lang.String _DEFINITION = "int16 temperatureRangeMin\nint16 temperatureRangeMax\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  short getTemperatureRangeMin();
  void setTemperatureRangeMin(short value);
  short getTemperatureRangeMax();
  void setTemperatureRangeMax(short value);
}
