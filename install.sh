#!/bin/bash

REPO="GloriousEggroll/proton-ge-custom"
LATEST=$(curl -sL -o /dev/null -w '%{url_effective}' "https://github.com/$REPO/releases/latest")
RELEASE_TAG=$(basename "$LATEST")
DOWNLOAD_URL="https://github.com/$REPO/archive/refs/tags/$RELEASE_TAG.tar.gz"
curl -L -o "$RELEASE_TAG.tar.gz" "$DOWNLOAD_URL"
echo "Downloaded: $RELEASE_TAG.tar.gz"