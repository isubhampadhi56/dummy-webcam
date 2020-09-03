#!/bin/bash
sudo apt install -y v4l2loopback-dkms
sudo apt install -y ffmpeg
clear 
echo "Removing any exising virtual interface"
sudo modprobe -r v4l2loopback
echo "Disabling actual webcam driver"
sudo modprobe -r uvcvideo
echo "Creating Virtual Interface"
sudo modprobe v4l2loopback video_nr=10 card_label="Logitech BRIO"
for i in {1..10000}; do printf "file '%s'\n" $1 >> list.txt; done
clear
echo "Starting Stream ...."
ffmpeg -re -f concat -i list.txt -f v4l2 /dev/video10
echo "Removing Interfaces"
rm list.txt
sudo modprobe -r v4l2loopback
echo "Enabling actual webcam"
sudo modprobe uvcvideo
echo "Exiting ...."
clear