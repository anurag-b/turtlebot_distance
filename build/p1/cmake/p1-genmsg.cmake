# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "p1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ip1:/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(p1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg" NAME_WE)
add_custom_target(_p1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "p1" "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(p1
  "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
)

### Generating Services

### Generating Module File
_generate_module_cpp(p1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(p1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(p1_generate_messages p1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg" NAME_WE)
add_dependencies(p1_generate_messages_cpp _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_gencpp)
add_dependencies(p1_gencpp p1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(p1
  "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
)

### Generating Services

### Generating Module File
_generate_module_lisp(p1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(p1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(p1_generate_messages p1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg" NAME_WE)
add_dependencies(p1_generate_messages_lisp _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_genlisp)
add_dependencies(p1_genlisp p1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(p1
  "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
)

### Generating Services

### Generating Module File
_generate_module_py(p1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(p1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(p1_generate_messages p1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dark_knight/ros_prac/catkin_ws_p1/src/p1/msg/landmarkdistance.msg" NAME_WE)
add_dependencies(p1_generate_messages_py _p1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(p1_genpy)
add_dependencies(p1_genpy p1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS p1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/p1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/p1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/p1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
