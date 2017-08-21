package sensor_synch_drivers;

public interface FeuerWeRRImuMsg extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "sensor_synch_drivers/FeuerWeRRImuMsg";
  static final java.lang.String _DEFINITION = "# This is a message to hold data from the FeuerWeRR (Inertial Measurement Unit)\n\nHeader header\ngeometry_msgs/Vector3 imu_angular_velocity\ngeometry_msgs/Vector3 imu_linear_acceleration\ngeometry_msgs/Vector3 ma351_linear_acceleration\nstd_msgs/Int16MultiArray imu_stream\ntime feuertime\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  geometry_msgs.Vector3 getImuAngularVelocity();
  void setImuAngularVelocity(geometry_msgs.Vector3 value);
  geometry_msgs.Vector3 getImuLinearAcceleration();
  void setImuLinearAcceleration(geometry_msgs.Vector3 value);
  geometry_msgs.Vector3 getMa351LinearAcceleration();
  void setMa351LinearAcceleration(geometry_msgs.Vector3 value);
  std_msgs.Int16MultiArray getImuStream();
  void setImuStream(std_msgs.Int16MultiArray value);
  org.ros.message.Time getFeuertime();
  void setFeuertime(org.ros.message.Time value);
}
