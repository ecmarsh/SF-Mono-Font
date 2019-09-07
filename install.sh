#!/bin/sh

# Set src and target dir (MacOS)
sf_mono_dir="$( cd "$( dirname "$0" )" && pwd )"
fonts_dir="$HOME/Library/Fonts"

# Copy sf mono to fonts dir
echo "Installing fonts..."
find "$sf_mono_dir" \( -name "SF-Mono*.otf" \) -type f -print0 | xargs -0 -n1 -I % cp "%" "$fonts_dir/"

# Confirmation message
echo "SF Mono installed to $fonts_dir"