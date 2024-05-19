#!/bin/bash

#
# This script is designed to remove unwanted Noto fonts from the system, keeping only
# a curated selection of Noto fonts. The script creates a backup directory for the
# removed fonts, moves the unwanted fonts to that directory, and refreshes the font
# cache after the operation is complete.
#

# Create a backup directory for unwanted fonts
mkdir -p ~/backup-fonts

# List of patterns to keep (with wildcards to catch all variations)
PATTERNS_TO_KEEP=(
    "NotoColorEmoji.ttf"
    "NotoMono*"
    "NotoSans-Regular*"
    "NotoSans-Italic*"
    "NotoSans-Medium*"
    "NotoSans-Semi*"
    "NotoSans-Extra*"
    "NotoSans-Condensed*"
    "NotoSans-Black*"
    "NotoSans-Bold*"
    "NotoSansDisplay*"
    "NotoSansItalic*"
    "NotoSans-Light*"
    "NotoSansThin*"
    "NotoSansSemiCondensed*"
    "NotoSansSymbol*"
    "NotoSansThin*"
    "NotoSansMono*"
    "NotoSerif-Regular*"
    "NotoSerif-Italic*"
    "NotoSerif-Black*"
    "NotoSerif-Bold*"
    "NotoSerif-Condensed*"
    "NotoSerif-Extra*"
    "NotoSerif-ExtraCondensed*"
    "NotoSerif-Light*"
    "NotoSerif-Semi*"
    "NotoSerif-SemiCondensed*"
    "NotoSerif-Thin*"
    "NotoSerifDisplay*"
)


# Function to check if a font matches any of the patterns to keep
should_keep() {
    for pattern in "${PATTERNS_TO_KEEP[@]}"; do
        if [[ $1 == $pattern ]]; then
            return 0
        fi
    done
    return 1
}

# Move unwanted Noto fonts to the backup directory
for FONT in /usr/share/fonts/truetype/noto/*; do
    FONT_NAME=$(basename "$FONT")
    KEEP_FONT=false
    for pattern in "${PATTERNS_TO_KEEP[@]}"; do
        if [[ $FONT_NAME == $pattern ]]; then
            KEEP_FONT=true
            break
        fi
    done
    if $KEEP_FONT; then
        echo "Keeping $FONT_NAME"
    else
        echo "Moving $FONT_NAME to backup directory..."
        sudo mv "$FONT" ~/backup-fonts/
    fi
done

# Refresh font cache
sudo fc-cache -f -v

echo "Unwanted Noto fonts have been moved and the font cache has been refreshed."
