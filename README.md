# Proton GE Custom Installer / Updater

This is a simple Bash script to automatically download and install the latest release of [Proton GE Custom](https://github.com/GloriousEggroll/proton-ge-custom) for use with Steam's compatibility layer.

## Features
- Checks for the latest release of Proton GE Custom.
- Downloads and installs it to Steam's `compatibilitytools.d` directory.
- Automatically removes old versions (optional).
- Ensures you always have the latest version installed.

## Prerequisites
- `curl`: Required to fetch the latest release information.
- `tar`: Needed to extract the downloaded archive.
- Steam must be installed and running on your system.

## Installation
1. Copy the script and save it as `proton-ge-updater.sh`.
2. Give it execute permissions:
   ```bash
   chmod +x proton-ge-updater.sh
   ```
3. Run the script:
   ```bash
   ./proton-ge-updater.sh
   ```

## Usage
- The script will check if the latest version is already installed. If it is, it exits without doing anything.
- If a new version is available, it downloads and installs it.
- You will be prompted to delete old versions (optional).

## Notes
- The script installs Proton GE Custom in `~/.local/share/Steam/compatibilitytools.d/`.
- After installation, restart Steam to detect the new Proton version.
- This script only works on Linux.

## License
This script is provided as-is without any warranty. Feel free to modify and distribute it as needed.

