#!/bin/sh

# Set src and target dir (MacOS)
sf_mono_dir="$( cd "$( dirname "$0" )" && pwd )"
fonts_dir="$HOME/Library/Fonts"

# Copy sf mono to fonts dir
echo "Installing SF Mono..."
find "$sf_mono_dir" \( -name "SF-Mono*.otf" \) -type f -print0 | xargs -0 -n1 -I % cp "%" "${fonts_dir}/"

# Print confirmation message
echo "SF Mono installed to $fonts_dir"

# Ask for removal of sf-mono dir
read -p "Do you want to remove ${sf_mono_dir}? (Y/N) > "
if [[ "$REPLY" =~ ^[yY] ]]; then
    rm -rf $sf_mono_dir
    echo "Removed ${sf_mono_dir}/"
fi
