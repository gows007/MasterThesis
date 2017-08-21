# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "optris_drivers: 2 messages, 3 services")

set(MSG_I_FLAGS "-Ioptris_drivers:/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(optris_drivers_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_custom_target(_optris_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "optris_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_custom_target(_optris_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "optris_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_custom_target(_optris_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "optris_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_custom_target(_optris_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "optris_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" ""
)

get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_custom_target(_optris_drivers_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "optris_drivers" "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
)
_generate_msg_cpp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
)

### Generating Services
_generate_srv_cpp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
)
_generate_srv_cpp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
)
_generate_srv_cpp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
)

### Generating Module File
_generate_module_cpp(optris_drivers
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(optris_drivers_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(optris_drivers_generate_messages optris_drivers_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_cpp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_cpp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_cpp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_cpp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_cpp _optris_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(optris_drivers_gencpp)
add_dependencies(optris_drivers_gencpp optris_drivers_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS optris_drivers_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
)
_generate_msg_eus(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
)

### Generating Services
_generate_srv_eus(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
)
_generate_srv_eus(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
)
_generate_srv_eus(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
)

### Generating Module File
_generate_module_eus(optris_drivers
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(optris_drivers_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(optris_drivers_generate_messages optris_drivers_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_eus _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_eus _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_eus _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_eus _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_eus _optris_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(optris_drivers_geneus)
add_dependencies(optris_drivers_geneus optris_drivers_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS optris_drivers_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
)
_generate_msg_lisp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
)

### Generating Services
_generate_srv_lisp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
)
_generate_srv_lisp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
)
_generate_srv_lisp(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
)

### Generating Module File
_generate_module_lisp(optris_drivers
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(optris_drivers_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(optris_drivers_generate_messages optris_drivers_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_lisp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_lisp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_lisp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_lisp _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_lisp _optris_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(optris_drivers_genlisp)
add_dependencies(optris_drivers_genlisp optris_drivers_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS optris_drivers_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
)
_generate_msg_nodejs(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
)

### Generating Services
_generate_srv_nodejs(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
)
_generate_srv_nodejs(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
)
_generate_srv_nodejs(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
)

### Generating Module File
_generate_module_nodejs(optris_drivers
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(optris_drivers_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(optris_drivers_generate_messages optris_drivers_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_nodejs _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_nodejs _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_nodejs _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_nodejs _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_nodejs _optris_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(optris_drivers_gennodejs)
add_dependencies(optris_drivers_gennodejs optris_drivers_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS optris_drivers_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
)
_generate_msg_py(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
)

### Generating Services
_generate_srv_py(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
)
_generate_srv_py(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
)
_generate_srv_py(optris_drivers
  "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
)

### Generating Module File
_generate_module_py(optris_drivers
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(optris_drivers_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(optris_drivers_generate_messages optris_drivers_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_py _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg" NAME_WE)
add_dependencies(optris_drivers_generate_messages_py _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_py _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_py _optris_drivers_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv" NAME_WE)
add_dependencies(optris_drivers_generate_messages_py _optris_drivers_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(optris_drivers_genpy)
add_dependencies(optris_drivers_genpy optris_drivers_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS optris_drivers_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/optris_drivers
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(optris_drivers_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(optris_drivers_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(optris_drivers_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/optris_drivers
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(optris_drivers_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(optris_drivers_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(optris_drivers_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/optris_drivers
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(optris_drivers_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(optris_drivers_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(optris_drivers_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/optris_drivers
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(optris_drivers_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(optris_drivers_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(optris_drivers_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/optris_drivers
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(optris_drivers_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(optris_drivers_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(optris_drivers_generate_messages_py sensor_msgs_generate_messages_py)
endif()
