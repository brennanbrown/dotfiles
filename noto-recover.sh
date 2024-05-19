#!/bin/bash

#
# This script is designed to restore the Noto fonts that were previously removed by
# the noto.sh script. It checks for the existence of the backup-fonts directory created
# by noto.sh, and if found, moves the backed-up fonts back to their original location
# (/usr/share/fonts/truetype/noto/). After restoring the fonts, it refreshes the font
# cache, and optionally removes the backup-fonts directory if it's empty.
#


# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="${SCRIPT_DIR}/backup-fonts"

# Check if backup directory exists
if [ ! -d "${BACKUP_DIR}" ]; then
    echo "Backup directory ${BACKUP_DIR} does not exist. No fonts to restore."
    exit 1
fi

# Restore Noto fonts from the backup directory
echo "Restoring Noto fonts from the backup directory..."
sudo mv "${BACKUP_DIR}"/* /usr/share/fonts/truetype/noto/

# Remove the backup directory if it's empty
if [ ! "$(ls -A ${BACKUP_DIR})" ]; then
    rmdir "${BACKUP_DIR}"
    echo "Backup directory ${BACKUP_DIR} has been removed as it is empty."
fi

# Refresh font cache
echo "Refreshing font cache..."
sudo fc-cache -f -v

echo "Restoration complete! Noto fonts have been moved back to their original directory and the font cache has been refreshed."
