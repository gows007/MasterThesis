package visualization;

public interface PaletteRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/PaletteRequest";
  static final java.lang.String _DEFINITION = "int16 palette\nint16 paletteScaling\nfloat32 temperatureMin\nfloat32 temperatureMax\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  short getPalette();
  void setPalette(short value);
  short getPaletteScaling();
  void setPaletteScaling(short value);
  float getTemperatureMin();
  void setTemperatureMin(float value);
  float getTemperatureMax();
  void setTemperatureMax(float value);
}
