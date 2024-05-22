#!/bin/bash
#
# This script sets up a development environment for JAMstack frameworks like Jekyll and Hugo.
#

# Install Ruby and Ruby gems
sudo apt install -y ruby-full ruby-bundler

# Install Hugo
sudo snap install hugo --channel=extended

# Install Node.js and npm
sudo apt install -y nodejs npm

# Install Yarn package manager
npm install --global yarn

# Install Gulp task runner
npm install --global gulp-cli

# Install Bundler for Ruby gem management
gem install bundler

# Create a directory for JAMstack projects
mkdir -p ~/Projects/jamstack

echo "JAMstack development environment setup complete!"
