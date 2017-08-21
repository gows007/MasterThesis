package visualization;

public interface Flag extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "visualization/Flag";
  static final java.lang.String _DEFINITION = "Header header\nuint32 flag_state\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getFlagState();
  void setFlagState(int value);
}
