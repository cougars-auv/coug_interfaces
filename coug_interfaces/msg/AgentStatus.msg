std_msgs/Header header

geometry_msgs/Pose local_odometry
float64[36] odometry_covariance

bool includes_depth
float64 pressure_depth

bool includes_ahrs
geometry_msgs/Quaternion ahrs_orientation

bool includes_range
float64 range_dist

bool includes_usbl
float64 usbl_azimuth
float64 usbl_elevation

bool includes_position
float64 position_depth
