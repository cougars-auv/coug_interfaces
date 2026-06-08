cmake_minimum_required(VERSION 3.22)
project(coug_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# --- Dependencies ---
find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/ControlSetpoint.msg"
  "msg/GraphMetrics.msg"
  "msg/WayPointList.msg"
  "srv/BagRecord.srv"
  DEPENDENCIES std_msgs builtin_interfaces geographic_msgs
)

if(BUILD_TESTING)
endif()

ament_auto_package()
