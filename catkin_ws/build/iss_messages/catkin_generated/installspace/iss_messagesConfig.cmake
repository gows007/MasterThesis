# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(iss_messages_CONFIG_INCLUDED)
  return()
endif()
set(iss_messages_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(iss_messages_SOURCE_PREFIX /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/src/iss_messages)
  set(iss_messages_DEVEL_PREFIX /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel)
  set(iss_messages_INSTALL_PREFIX "")
  set(iss_messages_PREFIX ${iss_messages_DEVEL_PREFIX})
else()
  set(iss_messages_SOURCE_PREFIX "")
  set(iss_messages_DEVEL_PREFIX "")
  set(iss_messages_INSTALL_PREFIX /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/install)
  set(iss_messages_PREFIX ${iss_messages_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'iss_messages' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(iss_messages_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include " STREQUAL " ")
  set(iss_messages_INCLUDE_DIRS "")
  set(_include_dirs "include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${iss_messages_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'iss_messages' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'feuerwerr <feuerwerr@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'iss_messages' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/install/${idir}'.  Ask the maintainer 'feuerwerr <feuerwerr@todo.todo>' to fix it.")
    endif()
    _list_append_unique(iss_messages_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND iss_messages_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND iss_messages_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND iss_messages_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/install/lib;/home/feuerwerr/Repository/feuerwerr_ros/trunk/catkin_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(iss_messages_LIBRARY_DIRS ${lib_path})
      list(APPEND iss_messages_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'iss_messages'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND iss_messages_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(iss_messages_EXPORTED_TARGETS "iss_messages_generate_messages_cpp;iss_messages_generate_messages_eus;iss_messages_generate_messages_lisp;iss_messages_generate_messages_nodejs;iss_messages_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${iss_messages_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_runtime;geometry_msgs;roscpp;rospy;std_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 iss_messages_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${iss_messages_dep}_FOUND)
      find_package(${iss_messages_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${iss_messages_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(iss_messages_INCLUDE_DIRS ${${iss_messages_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(iss_messages_LIBRARIES ${iss_messages_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${iss_messages_dep}_LIBRARIES})
  _list_append_deduplicate(iss_messages_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(iss_messages_LIBRARIES ${iss_messages_LIBRARIES})

  _list_append_unique(iss_messages_LIBRARY_DIRS ${${iss_messages_dep}_LIBRARY_DIRS})
  list(APPEND iss_messages_EXPORTED_TARGETS ${${iss_messages_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "iss_messages-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${iss_messages_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
