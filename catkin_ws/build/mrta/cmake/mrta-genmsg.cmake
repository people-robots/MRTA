# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mrta: 6 messages, 1 services")

set(MSG_I_FLAGS "-Imrta:/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mrta_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" "mrta/Task"
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" ""
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" "mrta/Task"
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" ""
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" "mrta/Task"
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" "mrta/Task"
)

get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_custom_target(_mrta_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mrta" "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)
_generate_msg_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)

### Generating Services
_generate_srv_cpp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
)

### Generating Module File
_generate_module_cpp(mrta
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mrta_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mrta_generate_messages mrta_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_dependencies(mrta_generate_messages_cpp _mrta_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrta_gencpp)
add_dependencies(mrta_gencpp mrta_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrta_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)
_generate_msg_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)

### Generating Services
_generate_srv_eus(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
)

### Generating Module File
_generate_module_eus(mrta
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mrta_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mrta_generate_messages mrta_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_dependencies(mrta_generate_messages_eus _mrta_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrta_geneus)
add_dependencies(mrta_geneus mrta_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrta_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)
_generate_msg_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)

### Generating Services
_generate_srv_lisp(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
)

### Generating Module File
_generate_module_lisp(mrta
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mrta_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mrta_generate_messages mrta_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_dependencies(mrta_generate_messages_lisp _mrta_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrta_genlisp)
add_dependencies(mrta_genlisp mrta_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrta_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)
_generate_msg_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)

### Generating Services
_generate_srv_nodejs(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
)

### Generating Module File
_generate_module_nodejs(mrta
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mrta_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mrta_generate_messages mrta_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_dependencies(mrta_generate_messages_nodejs _mrta_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrta_gennodejs)
add_dependencies(mrta_gennodejs mrta_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrta_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)
_generate_msg_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)

### Generating Services
_generate_srv_py(mrta
  "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
)

### Generating Module File
_generate_module_py(mrta
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mrta_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mrta_generate_messages mrta_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg" NAME_WE)
add_dependencies(mrta_generate_messages_py _mrta_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mrta_genpy)
add_dependencies(mrta_genpy mrta_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mrta_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mrta
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mrta_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mrta
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mrta_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mrta
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mrta_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mrta
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mrta_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mrta
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mrta_generate_messages_py std_msgs_generate_messages_py)
endif()
