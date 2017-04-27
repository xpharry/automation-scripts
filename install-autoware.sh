#!/bin/bash

# for Ubuntu14.04

#install dependency
sudo apt-get -y install ros-indigo-desktop-full ros-indigo-nmea-msgs ros-indigo-nmea-navsat-driver ros-indigo-sound-play ros-indigo-jsk-visualization ros-indigo-grid-map
sudo apt-get -y install ros-indigo-controller-manager ros-indigo-ros-control ros-indigo-ros-controllers ros-indigo-gazebo-ros-control ros-indigo-sicktoolbox ros-indigo-sicktoolbox-wrapper ros-indigo-joystick-drivers ros-indigo-novatel-span-driver
sudo apt-get -y install libnlopt-dev freeglut3-dev qtbase5-dev libqt5opengl5-dev libssh2-1-dev libarmadillo-dev libpcap-dev gksu libgl1-mesa-dev

cd $HOME
git clone https://github.com/CPFL/Autoware.git
cd ~/Autoware/ros/src
source /opt/ros/indigo/setup.bash
catkin_init_workspace
cd ../
./catkin_make_release
