#!/bin/bash

# Updates the native and foreign package files, tracking the installed packages
# from my Arch installation.
command -v pacman >/dev/null 2>&1 || { echo >&2 "pacman is required to run this script!"; exit 1; }

pacman -Qqettn > native.txt
pacman -Qqettm > foreign.txt
