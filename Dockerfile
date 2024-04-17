FROM osrf/ros:humble-desktop-full
RUN apt-get update && apt-get install -y \
  ros-humble-rmw-cyclonedds-cpp
WORKDIR /bno_imu
ENV ROS_DOMAIN_ID=21
COPY bno055/ ./src/
COPY entrypoint.sh entrypoint.sh
CMD ["bash"]
ENTRYPOINT [ "/bin/bash" ,"entrypoint.sh"]
