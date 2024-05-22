#!/bin/bash
#
# This script installs and configures the Beeminder CLI tool for goal tracking.
#

# Install Python and pip
sudo apt install -y python3 python3-pip

# Install Beeminder CLI
pip3 install beeminder-cli

# Configure Beeminder CLI with your API token
beeminder-cli auth YOUR_API_TOKEN

echo "Beeminder CLI tool installed and configured!"
