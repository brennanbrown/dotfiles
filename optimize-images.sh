#!/bin/bash
#
# This script optimizes images in the current directory for web use.
#

# Install image optimization tools
sudo apt install -y jpegoptim optipng pngquant gifsicle

# Optimize JPEG images
find . -type f -name '*.jpg' -exec jpegoptim --strip-all {} \;

# Optimize PNG images
find . -type f -name '*.png' -exec optipng {} \;
find . -type f -name '*.png' -exec pngquant --force --ext=.png {} \;

# Optimize GIF images
find . -type f -name '*.gif' -exec gifsicle --batch --optimize=3 --output optimized.gif {} \; -exec mv optimized.gif {} \;

echo "Image optimization complete!"
