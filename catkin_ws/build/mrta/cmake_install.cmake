# Install script for directory: /home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kimwang/Desktop/MRTA-devel/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta/msg" TYPE FILE FILES
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Task.msg"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionRequest.msg"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/AuctionAck.msg"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Bid.msg"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/Winner.msg"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/msg/ScheduledTasks.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta/srv" TYPE FILE FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/srv/TerminateRobot.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta/cmake" TYPE FILE FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/build/mrta/catkin_generated/installspace/mrta-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/include/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/share/roseus/ros/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/share/common-lisp/ros/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/share/gennodejs/ros/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/lib/python2.7/dist-packages/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/devel/lib/python2.7/dist-packages/mrta")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/build/mrta/catkin_generated/installspace/mrta.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta/cmake" TYPE FILE FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/build/mrta/catkin_generated/installspace/mrta-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta/cmake" TYPE FILE FILES
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/build/mrta/catkin_generated/installspace/mrtaConfig.cmake"
    "/home/kimwang/Desktop/MRTA-devel/catkin_ws/build/mrta/catkin_generated/installspace/mrtaConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrta" TYPE FILE FILES "/home/kimwang/Desktop/MRTA-devel/catkin_ws/src/mrta/package.xml")
endif()

