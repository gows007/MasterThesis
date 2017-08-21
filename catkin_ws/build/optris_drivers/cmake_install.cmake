# Install script for directory: /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers/msg" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Temperature.msg"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/msg/Flag.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers/srv" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/AutoFlag.srv"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/TemperatureRange.srv"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/srv/Palette.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/optris_drivers/catkin_generated/installspace/optris_drivers-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/include/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/roseus/ros/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/common-lisp/ros/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/share/gennodejs/ros/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/optris_drivers")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/optris_drivers" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/include/optris_drivers/ThresholdConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/optris_drivers" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/optris_drivers/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/optris_drivers/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/optris_drivers" TYPE DIRECTORY FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/python2.7/dist-packages/optris_drivers/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/optris_drivers/catkin_generated/installspace/optris_drivers.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers/cmake" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/optris_drivers/catkin_generated/installspace/optris_drivers-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers/cmake" TYPE FILE FILES
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/optris_drivers/catkin_generated/installspace/optris_driversConfig.cmake"
    "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/build/optris_drivers/catkin_generated/installspace/optris_driversConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/optris_drivers" TYPE FILE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/optris_drivers/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/optris_drivers" TYPE EXECUTABLE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/optris_drivers/optris_colorconvert_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_colorconvert_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/optris_drivers" TYPE EXECUTABLE FILES "/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib/optris_drivers/optris_imager_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node"
         OLD_RPATH "/opt/ros/kinetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/optris_drivers/optris_imager_node")
    endif()
  endif()
endif()

