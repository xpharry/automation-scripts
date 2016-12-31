# automation-scripts

You can use these scripts after installing Ubuntu 14.04.

Please change install version by editing scripts.


### Install NVIDIA CUDA Driver
1. Execute `install-cuda.sh`<br>
2. Answer some questions as follows

  - Do you accept the previously read EULA? : *accept*
  - Install NVIDIA Accelerated Graphics Driver for ~~ : *n*
  - Install the CUDA 7.5 Toolkit? : *y*
  - Enter Toolkit Location : (blank)
  - Do you want to install a symbolic link at ~~ : *y*
  - Install the CUDA 7.5 Samples? : *y*
  - Enter CUDA Samples Location : (blank)
  
### Install OpenCV
1. Execute `opencv.sh install`
2. Wait for a while...

### Install ROS Indigo
1. Execute `install-ros-indigo.sh`
2. Wait for a while...

### Install Autoware
1. Execute `install-autoware.sh`
2. Wait for a while...
