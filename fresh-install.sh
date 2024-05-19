#!/bin/bash
#
# This script automates the setup and installation of various software applications
# and development tools on an Ubuntu system. It covers a wide range of categories,
# including productivity and writing tools, academic and research tools, web development,
# multimedia tools, games, mindfulness applications, minimalist tools, e-book management,
# video editing, and more.
#
# This script should be run with sudo privileges.
#

# Install Software from Repositories
echo "Installing Snapd..."
sudo apt install -y snapd

echo "Installing common software via Snap..."
sudo snap install --classic code
sudo snap install slack --classic
sudo snap install spotify

# Install Additional Software
echo "Installing additional software..."
sudo apt install -y ubuntu-restricted-extras vlc gimp inkscape \
                   libreoffice thunderbird obsidian audacity \
                   anki htop cron zotero-snap jabref pychess \
                   gnome-meditate focuswriter calibre kdenlive

# Install Development Tools
echo "Installing development tools..."

echo "Installing Node.js and npm..."
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

echo "Installing Python and pip..."
sudo apt install -y python3 python3-pip

echo "Installing Java..."
sudo apt install -y default-jdk

echo "Installing Docker..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}

echo "Installing Jekyll and Ruby..."
sudo apt install -y ruby-full build-essential zlib1g-dev
gem install jekyll bundler

# Set Up Version Control
echo "Configuring Git..."
git config --global user.name "Brennan Kenneth Brown"
git config --global user.email "mail@brennanbrown.ca"

# System Optimization
echo "Enabling firewall..."
sudo ufw enable

echo "Installing and configuring TLP for laptop battery optimization..."
sudo apt install -y tlp tlp-rdw
sudo tlp start

# Backup and Recovery
echo "Installing Timeshift..."
sudo apt install -y timeshift

# Personalization and Tweaks
echo "Installing GNOME Tweaks..."
sudo apt install -y gnome-tweaks

echo "Installing GNOME Shell Extensions..."
sudo apt install -y gnome-shell-extensions

# Setup Cloud Storage
echo "Installing Dropbox..."
sudo apt install -y nautilus-dropbox

echo "Installing Google Drive integration..."
sudo apt install -y gnome-online-accounts

# Enable and Start Cron
sudo systemctl enable cron

# Final Cleanup
echo "Removing unneeded packages..."
sudo apt autoremove -y

echo "Cleaning package cache..."
sudo apt clean

echo "Setup complete! Please restart your computer for all changes to take effect."
