#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Dhruv Gupta

echo "--- The Open Source Manifesto Generator ---"
echo "Answer three questions to generate your manifesto."
echo ""

# Using 'read -p' to prompt the user and store input in variables
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Capture the current date in a readable format
DATE=$(date '+%d %B %Y')
# Create a unique filename based on the current username
OUTPUT="manifesto_$(whoami).txt"

# --- TODO: Compose and write the paragraph ---

# Header for the file (using '>' to overwrite/create the file)
echo "MY OPEN SOURCE MANIFESTO - Created on $DATE" > "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"

# Composing the paragraph (using '>>' to append to the file)
echo "In a world driven by software, I rely on $TOOL to empower my digital life." >> "$OUTPUT"
echo "To me, the core of open source is $FREEDOM, which allows us to innovate without barriers." >> "$OUTPUT"
echo "Driven by this philosophy, I commit to building $BUILD and sharing it with the world," >> "$OUTPUT"
echo "ensuring that knowledge remains free for everyone." >> "$OUTPUT"

# Demonstration of the 'alias' concept via comment as requested:
# ALIAS CONCEPT: To run this script faster, you could add an alias to your .bashrc:
# alias mygen='./manifesto_generator.sh'

echo ""
echo "Success! Manifesto saved to: $OUTPUT"
echo "------------------------------------------"

# Display the final result to the user
cat "$OUTPUT"
echo "------------------------------------------"
