#!/bin/sh

# Set src and target dir (MacOS)
SF_MONO_DIR="$( cd "$( dirname "$0" )" && pwd )"
FONTS_DIR="$HOME/Library/Fonts"

# Copy sf mono to fonts dir
echo "Installing fonts..."
find "$SF_MONO_DIR" \( -name "SF-Mono*.otf" \) -type f -print0 | xargs -0 -n1 -I % cp "%" "$FONTS_DIR/"

# Print confirmation message
echo "SF Mono installed to $fonts_dir"

# Ask for removal of sf-mono dir
read -p "Do you want to remove ${sf_mono_dir}? (Y/N) > "
if [[ "$REPLY" =~ ^[yY] ]]; then
    rm -r $sf_mono_dir
    echo "Removed "${sf_mono_dir}/"
fi
