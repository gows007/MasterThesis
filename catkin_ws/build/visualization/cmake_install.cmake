# Install script for directory: /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization/msg" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Temperature.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/Flag.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/FeuerIRImage.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/fusion_overlay.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/msg/radar_target.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization/srv" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/AutoFlag.srv"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/TemperatureRange.srv"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/srv/Palette.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/visualization/catkin_generated/installspace/visualization-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/include/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/roseus/ros/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/common-lisp/ros/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/gennodejs/ros/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/visualization")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visualization" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/include/visualization/ThresholdConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/visualization" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/visualization/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/visualization/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/visualization" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/visualization/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/visualization/catkin_generated/installspace/visualization.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/visualization/catkin_generated/installspace/visualization-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization/cmake" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/visualization/catkin_generated/installspace/visualizationConfig.cmake"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/visualization/catkin_generated/installspace/visualizationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/visualization" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/visualization/package.xml")
endif()

