package visualization;

public interface AutoFlagRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/AutoFlagRequest";
  static final java.lang.String _DEFINITION = "bool autoFlag\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  boolean getAutoFlag();
  void setAutoFlag(boolean value);
}
