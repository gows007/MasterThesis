package optris_drivers;

public interface AutoFlagRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "optris_drivers/AutoFlagRequest";
  static final java.lang.String _DEFINITION = "bool autoFlag\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  boolean getAutoFlag();
  void setAutoFlag(boolean value);
}
