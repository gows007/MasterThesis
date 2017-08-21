# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "visualization: 5 messages, 3 services")

set(MSG_I_FLAGS "-Ivisualization:/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(visualization_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_custom_target(_visualization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visualization" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_msg_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_msg_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_msg_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_msg_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)

### Generating Services
_generate_srv_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_srv_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)
_generate_srv_cpp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
)

### Generating Module File
_generate_module_cpp(visualization
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(visualization_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(visualization_generate_messages visualization_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_dependencies(visualization_generate_messages_cpp _visualization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visualization_gencpp)
add_dependencies(visualization_gencpp visualization_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visualization_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_msg_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_msg_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_msg_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_msg_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)

### Generating Services
_generate_srv_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_srv_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)
_generate_srv_eus(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
)

### Generating Module File
_generate_module_eus(visualization
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(visualization_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(visualization_generate_messages visualization_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_dependencies(visualization_generate_messages_eus _visualization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visualization_geneus)
add_dependencies(visualization_geneus visualization_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visualization_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_msg_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_msg_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_msg_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_msg_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)

### Generating Services
_generate_srv_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_srv_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)
_generate_srv_lisp(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
)

### Generating Module File
_generate_module_lisp(visualization
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(visualization_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(visualization_generate_messages visualization_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_dependencies(visualization_generate_messages_lisp _visualization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visualization_genlisp)
add_dependencies(visualization_genlisp visualization_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visualization_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_msg_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_msg_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_msg_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_msg_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)

### Generating Services
_generate_srv_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_srv_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)
_generate_srv_nodejs(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
)

### Generating Module File
_generate_module_nodejs(visualization
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(visualization_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(visualization_generate_messages visualization_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_dependencies(visualization_generate_messages_nodejs _visualization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visualization_gennodejs)
add_dependencies(visualization_gennodejs visualization_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visualization_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_msg_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_msg_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_msg_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_msg_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)

### Generating Services
_generate_srv_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_srv_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)
_generate_srv_py(visualization
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
)

### Generating Module File
_generate_module_py(visualization
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(visualization_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(visualization_generate_messages visualization_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg" NAME_WE)
add_dependencies(visualization_generate_messages_py _visualization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visualization_genpy)
add_dependencies(visualization_genpy visualization_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visualization_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visualization
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(visualization_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(visualization_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(visualization_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visualization
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(visualization_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(visualization_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(visualization_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visualization
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(visualization_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(visualization_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(visualization_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visualization
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(visualization_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(visualization_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(visualization_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visualization
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(visualization_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(visualization_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(visualization_generate_messages_py sensor_msgs_generate_messages_py)
endif()
