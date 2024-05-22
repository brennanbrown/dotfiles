#!/bin/bash

# Upgrade Ubuntu LTS version

# Step 1: Update the current system
echo "Updating current system..."
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y

# Step 2: Remove unused packages
echo "Removing unused packages..."
sudo apt autoremove -y
sudo apt clean

# Step 3: Ensure update-manager-core is installed
echo "Installing update-manager-core if not already installed..."
sudo apt install -y update-manager-core

# Step 4: Start the upgrade process
echo "Starting the upgrade process..."
sudo do-release-upgrade

# Note: If the above command doesn't find the new release, use the -d option:
# sudo do-release-upgrade -d

# Step 5: Follow the on-screen instructions during the upgrade process
echo "Please follow the on-screen instructions to complete the upgrade."

# Optional Step: If the script completes without prompting for a reboot, remind the user to reboot
echo "The upgrade process may require a reboot to complete. Please reboot your system if necessary."

# End of script
echo "Upgrade process initiated. Please follow any further instructions and reboot your system when prompted."
