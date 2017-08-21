package visualization;

public interface PaletteResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/PaletteResponse";
  static final java.lang.String _DEFINITION = "bool success";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  boolean getSuccess();
  void setSuccess(boolean value);
}
