#!/bin/sh

# Delete all the thumbs, txt and nfo files
find Downloads/Completed -name "*.txt" -exec rm -rf {} \;
find Downloads/Completed -name "*.nfo" -exec rm -rf {} \;
find Downloads/Completed -name "*.jpg" -exec rm -rf {} \;
find Downloads/Completed -name "*.png" -exec rm -rf {} \;
find Downloads/Completed -name "*.gif" -exec rm -rf {} \;
find Downloads/Completed -name "*.srt" -exec rm -rf {} \;
find Downloads/Completed -name "*Thumbs.db*" -exec rm -rf {} \;

# Delete the empty folders
find Downloads/Completed -empty -type d -delete