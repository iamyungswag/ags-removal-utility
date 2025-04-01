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

## Table of Contents

- [Prerequisites](#prerequisites)
- [What Are AGS Services?](#what-are-ags-services)
- [Removal Process](#removal-process)
  - [Step 1: Force Kill All Adobe 
Processes](#step-1-force-kill-all-adobe-processes)
  - [Step 2: Stop and Disable AGS 
Services](#step-2-stop-and-disable-ags-services)
  - [Step 3: Remove AGS Files](#step-3-remove-ags-files)
  - [Step 4: Prevent Pop-Ups](#step-4-prevent-pop-ups)
  - [Step 5: Prevent Reinstallation](#step-5-prevent-reinstallation)
- [Verification](#verification)
- [Revert Removal](#revert-removal)
- [Automation Script](#automation-script)
- [Contributing](#contributing)

## Prerequisites

- **macOS System**: Tested on macOS Ventura and later.
- **Admin Access**: Required for `sudo` commands.
- **Terminal**: Basic familiarity with Terminal commands.
- **Optional**: Back up your system or Adobe files before proceeding:
  ```bash
  sudo cp -r /Library/Application\ Support/Adobe /Library/Application\ 
Support/Adobe_Backup
