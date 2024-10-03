#!/bin/bash

# URL of the YouTube video
VIDEO_URL="https://www.youtube.com/shorts/B6ebIDCVXW8" # Replace with your YouTube video URL

REPEAT_COUNT=10

# Loop to play the video 10 times
for i in $(seq 1 $REPEAT_COUNT)
do
    echo "Playing video - Attempt $i"
    mpv --no-video $VIDEO_URL  # This plays audio-only. Remove '--no-video' to play both video and audio
done
