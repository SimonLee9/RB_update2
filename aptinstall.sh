#!/bin/bash

# apt install
sudo apt update

sudo apt install -y qtcreator qtbase5-dev qt5-qmake cmake libtbb-dev
libboost-all-dev libopencv-dev libopencv-contrib-dev libeigen3-dev cmake-gui
git htop build-essential rapidjson-dev libboost-system-dev libboost-thread-dev
libssl-dev nmap qtmultimedia5-dev libqt5multimedia-plugins

sudo apt-get install gstreamer1.0-plugins-base gstreamer1.0-plugins-good
gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly

sudo apt install libvtk9-qt-dev -y

sudo apt install libpcl-dev


echo "apt install에 대한 모든 작업이 완료되었습니다."

