#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Dhruv Gupta

PACKAGE="vlc"

echo "--- Package Audit: $PACKAGE ---"

# Check if package is installed
# This logic checks for rpm (RedHat) or dpkg (Debian/Ubuntu)
if rpm -q $PACKAGE &>/dev/null; then
echo "Status: $PACKAGE is installed."
rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
elif dpkg -l $PACKAGE &>/dev/null; then
echo "Status: $PACKAGE is installed."
# dpkg output formatting to match the requirement
dpkg -s $PACKAGE | grep -E 'Version|License|Description'
else
echo "Status: $PACKAGE is NOT installed."
fi

echo "------------------------------------------"

# Case statement for software philosophy/description
case $PACKAGE in
vlc)
echo "VLC: The Swiss Army knife of media players, championing codec freedom." ;;
httpd|apache2)
echo "Apache: The web server that built the open internet." ;;
mysql|mariadb)
echo "Database: Open source at the heart of millions of apps." ;;
firefox)
echo "Firefox: Putting people before profits to keep the web open and accessible." ;;
python3)
echo "Python: A powerful language focused on readability and community growth." ;;
*)
echo "Information for this specific package is not in our philosophy database." ;;
esac

echo "=========================================="
