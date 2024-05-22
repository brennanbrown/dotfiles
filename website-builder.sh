#!/bin/bash
#
# This script sets up a development environment for building and deploying static websites.
#

# Install Jekyll
sudo apt install -y ruby-full ruby-bundler
sudo gem install jekyll

# Install Hugo
sudo snap install hugo --channel=extended

# Install Node.js and npm
sudo apt install -y nodejs npm

# Install Yarn package manager
sudo npm install --global yarn

# Install Gulp task runner
sudo npm install --global gulp-cli

# Create a directory for website projects
mkdir -p ~/Projects/websites

echo "Website development environment setup complete!"
