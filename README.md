## ros2 for conda
1 conda create environment ros

`conda create -n ros`

2 install packages in conda_packages.txt in env

3 mkdir ros_workspace 

ref https://docs.ros.org/en/foxy/Installation/Ubuntu-Development-Setup.html#foxy-linux-dev-get-ros2-code

```
mkdir -p ~/ros2_foxy/src
cd ~/ros2_foxy
wget https://raw.githubusercontent.com/ros2/ros2/foxy/ros2.repos
vcs import src < ros2.repos
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro foxy -y --skip-keys "console_bridge fastcdr fastrtps rti-connext-dds-5.3.1 urdfdom_headers"
```

4 run ./colcon_build.sh
