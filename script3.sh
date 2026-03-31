#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Dhruv Gupta

# Array of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "------------------------------------------"

# Loop through the list of directories
for DIR in "${DIRS[@]}"; do
if [ -d "$DIR" ]; then
# Extracting permissions ($1), owner ($3), and group ($4)
PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
# Extracting the size only
SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

echo "DIR: $DIR"
echo " -> Permissions/Owner: $PERMS"
echo " -> Size: $SIZE"
else
echo "DIR: $DIR does not exist on this system."
fi
echo "----------------"
done

# --- TODO: Software Config Check (VLC) ---
echo "Checking VLC Configuration..."
VLC_CONFIG="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG" ]; then
VLC_PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
echo "VLC Config found at: $VLC_CONFIG"
echo "Permissions: $VLC_PERMS"
else
echo "VLC configuration directory not found. (Has the app been run yet?)"
fi

echo "=========================================="
