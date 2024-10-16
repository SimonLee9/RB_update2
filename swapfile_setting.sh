#!/bin/bash

# 스왑파일 설정
sudo swapoff /swapfile
sudo rm /swapfile
sudo fallocate -l 32G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile



echo "Swapfile - setting에 대해 모든 작업이 완료되었습니다."

