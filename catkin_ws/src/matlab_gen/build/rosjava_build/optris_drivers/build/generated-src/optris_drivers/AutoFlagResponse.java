package optris_drivers;

public interface AutoFlagResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "optris_drivers/AutoFlagResponse";
  static final java.lang.String _DEFINITION = "bool isAutoFlagActive";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  boolean getIsAutoFlagActive();
  void setIsAutoFlagActive(boolean value);
}
