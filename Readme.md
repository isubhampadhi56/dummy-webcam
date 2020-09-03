Requirement - Any Debian Distro with administrator privileges

Copy the script to same folder to that of video you want to play

Run Syntax

`chmod +x mancamfeed`

`./mancamfeed.sh <your video file>`

Examples

- ./mancamfeed.sh video1.mp4
- ./mancamfeed.sh video2.mkv

Now it will show a Camera device named "Logitech BRIO"

When you want to stop it simply press ctrl + c

By default, it will create a video loop of 10000 time i.e. if your video is of x min it can play for x*10000 minutes.

You will need to disable your actual camera module. For this first identify your driver/camera. Then disable it with following code :

`sudo modprobe -r <module_name>`

To re-enable it later run:

`sudo modprobe <module_name>`

[Reference](https://askubuntu.com/questions/166809/how-can-i-disable-my-webcam)

If you need more then that change loop value

Before stopping and starting the script you should stop the application using camera. 

This Script is impossible without umlaeute's contribution. so, for details info how it works please refer to - https://github.com/umlaeute/v4l2loopback

If are using different distribution then Debian please go to above repo, clone it and compile for your own Linux Distribution.

