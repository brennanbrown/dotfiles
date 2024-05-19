#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install fonts available via apt
echo "Installing fonts via apt..."

# Install Garamond (EB Garamond as a substitute for Garamond)
sudo apt install -y fonts-ebgaramond

# Install other high-quality fonts
sudo apt install -y fonts-dejavu-core
sudo apt install -y fonts-liberation
sudo apt install -y fonts-roboto
sudo apt install -y fonts-ubuntu
sudo apt install -y fonts-croscore

# Install additional fonts from Google Fonts using wget
echo "Downloading additional fonts from Google Fonts..."

# Create fonts directory if it doesn't exist
FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

# Download Open Sans
wget -qO- https://github.com/google/fonts/raw/main/apache/opensans/OpenSans%5Bwght%5D.ttf > "$FONT_DIR/OpenSans.ttf"

# Download Lora
wget -qO- https://github.com/google/fonts/raw/main/ofl/lora/Lora%5Bwght%5D.ttf > "$FONT_DIR/Lora.ttf"

# Download Merriweather
wget -qO- https://github.com/google/fonts/raw/main/ofl/merriweather/Merriweather%5Bwght%5D.ttf > "$FONT_DIR/Merriweather.ttf"

# Download Source Sans Pro
wget -qO- https://github.com/google/fonts/raw/main/ofl/sourcesanspro/SourceSansPro%5Bwght%5D.ttf > "$FONT_DIR/SourceSansPro.ttf"

# Refresh font cache
echo "Refreshing font cache..."
fc-cache -f -v

echo "Font installation complete!"
