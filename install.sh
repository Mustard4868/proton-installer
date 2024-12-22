#!/bin/bash

# Variables
REPO="GloriousEggroll/proton-ge-custom"
LATEST=$(curl -sL -o /dev/null -w '%{url_effective}' "https://github.com/$REPO/releases/latest")
RELEASE_TAG=$(basename "$LATEST")
DOWNLOAD_URL="https://github.com/$REPO/releases/download/$RELEASE_TAG/$RELEASE_TAG.tar.gz"
INSTALL_DIRECTORY="$HOME/.local/share/Steam/compatibilitytools.d"

if [ -d "$INSTALL_DIRECTORY/$RELEASE_TAG" ]; then
    echo "Latest version: $RELEASE_TAG is already installed"
    exit 0
fi

# Download the latest release from the GloriousEggroll/proton-ge-custom repository
curl -L -o "$RELEASE_TAG.tar.gz" "$DOWNLOAD_URL"

# Install to Steam's compatibilitytools.d directory
tar -xvf "$RELEASE_TAG.tar.gz" -C "$INSTALL_DIRECTORY"

# Clean up
rm -rf ./"$RELEASE_TAG.tar.gz"
echo "Downloaded and installed $RELEASE_TAG"