#!/bin/bash

# 네트워크 드라이버 설치

sudo apt install dkms
git clone https://github.com/gnab/rtl8812au.git
sudo cp -r rtl8812au /usr/src/rtl8812au-4.2.2
sudo dkms add -m rtl8812au -v 4.2.2
sudo dkms build -m rtl8812au -v 4.2.2
sudo dkms install -m rtl8812au -v 4.2.2
sudo modprobe 8812au

echo "network 드라이버 - setting에 대해 모든 작업이 완료되었습니다."

