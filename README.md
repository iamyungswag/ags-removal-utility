# Adobe Genuine Software (AGS) Removal Utility for macOS

![macOS](https://img.shields.io/badge/platform-macOS-lightgrey.svg)  
![Version](https://img.shields.io/badge/version-1.0.0-green.svg)

## Overview

This utility provides a comprehensive guide and script to remove Adobe 
Genuine Software (AGS) services from a macOS system, prevent associated 
pop-ups (e.g., "Adobe software not genuine"), and block reinstallation by 
Adobe applications. AGS services, such as `com.adobe.AGSService` and 
`com.adobe.agsservice`, are background processes that validate Adobe 
software licenses but can cause intrusive pop-ups and network activity.

This tool is designed for users who want to declutter their system while 
maintaining Adobe apps (e.g., Photoshop) or completely removing Adobe 
dependencies.

1. **Download the Script**:  
   - Download the ZIP file from the repository and extract it to locate `remove_ags.sh`  

2. **Make the Script Executable**:
   - Add execute permissions to the script to allow it to run:
     ```bash
     chmod +x remove_ags.sh
     ```

3. **Run the Script**:
   - Execute the script with `sudo`, as it requires administrative privileges to make system-level changes:
     ```bash
     sudo bash remove_ags.sh
     ```
   - **What the Script Does**:
     - Force kills all Adobe processes to prevent interference.
     - Stops and disables AGS services.
     - Removes AGS-related files and LaunchDaemons.
     - Blocks Adobe domains to prevent reinstallation.
     - Reboots your system to apply changes.

#### Notes for Running the Script

- **Caution**: Ensure you have backed up any important Adobe files before running the script, as it will remove AGS-related components.
- **Permissions**: The `sudo` command is required because the script modifies system files and directories.
- **Reboot**: The script will automatically reboot your system at the end to ensure all changes take effect.

## Prerequisites

- **macOS System**: Tested on macOS Ventura and later.
- **Admin Access**: Required for `sudo` commands.
- **Terminal**: Basic familiarity with Terminal commands.
- **Optional**: Back up your system or Adobe files before proceeding:
  ```bash
  sudo cp -r /Library/Application\ Support/Adobe /Library/Application\ Support/Adobe_Backup

## Contributing

Contributions are welcome! 
