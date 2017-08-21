# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_synch_drivers: 2 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_synch_drivers:/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_synch_drivers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_custom_target(_sensor_synch_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_synch_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_custom_target(_sensor_synch_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_synch_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" "std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_custom_target(_sensor_synch_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_synch_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers
)
_generate_msg_cpp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Services
_generate_srv_cpp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Module File
_generate_module_cpp(sensor_synch_drivers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_synch_drivers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_synch_drivers_generate_messages sensor_synch_drivers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_cpp _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_cpp _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_cpp _sensor_synch_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_synch_drivers_gencpp)
add_dependencies(sensor_synch_drivers_gencpp sensor_synch_drivers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_synch_drivers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers
)
_generate_msg_eus(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Services
_generate_srv_eus(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Module File
_generate_module_eus(sensor_synch_drivers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sensor_synch_drivers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sensor_synch_drivers_generate_messages sensor_synch_drivers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_eus _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_eus _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_eus _sensor_synch_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_synch_drivers_geneus)
add_dependencies(sensor_synch_drivers_geneus sensor_synch_drivers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_synch_drivers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers
)
_generate_msg_lisp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Services
_generate_srv_lisp(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Module File
_generate_module_lisp(sensor_synch_drivers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_synch_drivers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_synch_drivers_generate_messages sensor_synch_drivers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_lisp _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_lisp _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_lisp _sensor_synch_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_synch_drivers_genlisp)
add_dependencies(sensor_synch_drivers_genlisp sensor_synch_drivers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_synch_drivers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers
)
_generate_msg_nodejs(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Services
_generate_srv_nodejs(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Module File
_generate_module_nodejs(sensor_synch_drivers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sensor_synch_drivers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sensor_synch_drivers_generate_messages sensor_synch_drivers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_nodejs _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_nodejs _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_nodejs _sensor_synch_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_synch_drivers_gennodejs)
add_dependencies(sensor_synch_drivers_gennodejs sensor_synch_drivers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_synch_drivers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers
)
_generate_msg_py(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Services
_generate_srv_py(sensor_synch_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers
)

### Generating Module File
_generate_module_py(sensor_synch_drivers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_synch_drivers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_synch_drivers_generate_messages sensor_synch_drivers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_py _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_py _sensor_synch_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg" NAME_WE)
add_dependencies(sensor_synch_drivers_generate_messages_py _sensor_synch_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_synch_drivers_genpy)
add_dependencies(sensor_synch_drivers_genpy sensor_synch_drivers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_synch_drivers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_synch_drivers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sensor_synch_drivers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sensor_synch_drivers_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sensor_synch_drivers_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(sensor_synch_drivers_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sensor_synch_drivers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sensor_synch_drivers_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sensor_synch_drivers_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sensor_synch_drivers_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(sensor_synch_drivers_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_synch_drivers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sensor_synch_drivers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sensor_synch_drivers_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sensor_synch_drivers_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(sensor_synch_drivers_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sensor_synch_drivers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sensor_synch_drivers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sensor_synch_drivers_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sensor_synch_drivers_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(sensor_synch_drivers_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_synch_drivers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sensor_synch_drivers_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sensor_synch_drivers_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sensor_synch_drivers_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(sensor_synch_drivers_generate_messages_py std_srvs_generate_messages_py)
endif()
