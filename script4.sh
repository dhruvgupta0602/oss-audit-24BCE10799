#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog "error"

LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error' if $2 is not provided
COUNT=0

# --- TODO: Do-while style retry if file is empty ---
# This loop continues as long as the file size is zero (-s checks for size > 0)
while [ ! -s "$LOGFILE" ]; do
    echo "Waiting for log file '$LOGFILE' to contain data... (Ctrl+C to stop)"
    sleep 2
    if [ ! -f "$LOGFILE" ]; then
        echo "Error: File $LOGFILE not found."
        exit 1
    fi
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# --- Processing loop ---
while IFS= read -r LINE; do
    # -i makes it case-insensitive, -q makes it quiet (just checks for a match)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Summary ---
echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- TODO: Print last 5 matching lines ---
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "=========================================="
