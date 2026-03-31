#!/bin/bash
# Script 1: System Identity Report
# Author: Dhruv Gupta | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Dhruv Gupta" # Fill in your name
SOFTWARE_CHOICE="VLC Media Player" # Fill in your chosen software

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)
# Pulls the "PRETTY_NAME" from the os-release file (e.g., "Ubuntu 22.04 LTS")
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d'=' -f2 | tr -d '"')

# --- Display ---
echo "=========================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Distro : $DISTRO"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Home : $HOME_DIR"
echo "Uptime : $UPTIME"
echo "Date/Time: $DATE_TIME"
echo "------------------------------------------"
echo "Note: This OS is covered by the GNU General Public License (GPL)."
echo "=========================================="
