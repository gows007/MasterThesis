# Install script for directory: /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers/msg" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerIRImage.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/msg/FeuerWeRRImuMsg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers/srv" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/srv/FeuerWeRRStartAquistion.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/sensor_synch_drivers/catkin_generated/installspace/sensor_synch_drivers-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/include/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/roseus/ros/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/common-lisp/ros/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/gennodejs/ros/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/sensor_synch_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/sensor_synch_drivers/catkin_generated/installspace/sensor_synch_drivers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/sensor_synch_drivers/catkin_generated/installspace/sensor_synch_drivers-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers/cmake" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/sensor_synch_drivers/catkin_generated/installspace/sensor_synch_driversConfig.cmake"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/sensor_synch_drivers/catkin_generated/installspace/sensor_synch_driversConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sensor_synch_drivers" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/sensor_synch_drivers/package.xml")
endif()

