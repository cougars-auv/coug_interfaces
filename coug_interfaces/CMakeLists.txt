cmake_minimum_required(VERSION 3.22)
project(coug_interfaces)

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AgentStatus.msg"
  "msg/ControlSetpoint.msg"
  "msg/DvlBeam.msg"
  "msg/DvlBeamList.msg"
  "msg/GraphMetrics.msg"
  "msg/WayPoint.msg"
  "msg/WayPointList.msg"
  "srv/BagRecord.srv"
  DEPENDENCIES builtin_interfaces geographic_msgs geometry_msgs std_msgs
)

ament_auto_package()
