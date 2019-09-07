#!/bin/sh

# Set src and target dir (MacOS)
SF_MONO_DIR="$( cd "$( dirname "$0" )" && pwd )"
FONTS_DIR="$HOME/Library/Fonts"

# Copy sf mono to fonts dir
echo "Installing fonts..."
find "$SF_MONO_DIR" \( -name "SF-Mono*.otf" \) -type f -print0 | xargs -0 -n1 -I % cp "%" "$FONTS_DIR/"

# Confirmation message
echo "SF Mono installed to $FONTS_DIR"