#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Update package lists
sudo apt update

# Install necessary dependencies
sudo apt install -y git cmake cmake-gui build-essential

# 1. Install Sophus
echo "Installing Sophus..."
git clone https://github.com/strasdat/Sophus.git
cd Sophus
mkdir build
cd build
cmake ..
cmake-gui ..
# Instructions for manual intervention (checkboxes)
echo "Please uncheck 'test' and 'example', and check 'basic logging' in cmake-gui."
read -p "Press enter to continue after cmake-gui configuration..."
make -j$(nproc)
sudo make install
cd ~ # Return to home directory

# 2. Install GTSAM
echo "Installing GTSAM..."
git clone https://github.com/borglab/gtsam.git
cd gtsam
git checkout 4.2.0
mkdir build
cd build
cmake ..
cmake-gui ..
# Instructions for manual intervention (checkboxes)
echo "Please check 'USE_SYSTEM_EIGEN' and uncheck 'Test' and 'example' in cmake-gui."
read -p "Press enter to continue after cmake-gui configuration..."
make -j$(nproc)
sudo make install
cd ~ # Return to home directory

# 3. Install OMPL
echo "Installing OMPL..."
git clone https://github.com/ompl/ompl.git
cd ompl
git checkout 1.6.0
mkdir build
cd build
cmake ..
cmake-gui ..
make -j$(nproc)
sudo make install
cd ~ # Return to home directory

# 4. Install Socket.IO
echo "Installing Socket.IO..."
git clone --recurse-submodules https://github.com/socketio/socket.io-client-cpp.git
cd socket.io-client-cpp
mkdir build
cd build
cmake ..
cmake-gui ..
# Instructions for manual intervention (checkboxes)
echo "Please check 'BUILD_SHARED_LIBS' and 'DISABLE_LOGGING' in cmake-gui."
read -p "Press enter to continue after cmake-gui configuration..."
make -j$(nproc)
sudo make install
cd ~ # Return to home directory

# 5. Install Octomap
echo "Installing Octomap..."
git clone https://github.com/OctoMap/octomap.git
cd octomap
git checkout v1.10.0
mkdir build
cd build
cmake ..
cmake-gui ..
# Instructions for manual intervention (checkboxes)
echo "Please uncheck 'build d3d', 'octovis', and 'test' in cmake-gui."
read -p "Press enter to continue after cmake-gui configuration..."
make -j8
sudo make install
cd ~ # Return to home directory

# 6. Install Orbbec SDK
echo "Installing Orbbec SDK..."
git clone https://github.com/orbbec/OrbbecSDK.git
cd OrbbecSDK
git checkout v1.10.11
cd misc/scripts
sh install_udev_rules.sh
# No additional build is required
cd ~ # Return to home directory

echo "All libraries have been installed."

