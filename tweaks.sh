#!/bin/bash
#
# This script applies various tweaks and customizations to the Ubuntu desktop environment.
#

# Install GNOME Tweaks tool
echo "Installing GNOME Tweaks tool..."
sudo apt install -y gnome-tweaks

# Enable minimize on click for application icons in the dock
echo "Enabling minimize on click for application icons in the dock..."
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

# Enable minimizing windows on click for application icons in the top bar
echo "Enabling minimizing windows on click for application icons in the top bar..."
gsettings set org.gnome.shell.extensions.desktop-icons.unity-launcher minimize-single 'true'

# Disable suspend when laptop lid is closed
echo "Disabling suspend when laptop lid is closed..."
gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action 'blank'
gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action 'blank'

# Enable night light
echo "Enabling night light..."
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# Customize night light schedule
echo "Customizing night light schedule..."
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 20.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0

# Customize night light temperature
echo "Customizing night light temperature..."
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3500

# Disable automatic suspend and screen blanking
echo "Disabling automatic suspend and screen blanking..."
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.desktop.session idle-delay 0

echo "Ubuntu tweaks applied successfully!"
