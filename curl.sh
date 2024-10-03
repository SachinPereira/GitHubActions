#!/bin/bash

# URL of the YouTube video
VIDEO_URL="https://www.youtube.com/shorts/B6ebIDCVXW8" # Replace with your YouTube video URL

# Run the YouTube video 10 times
for i in {1..10}
do
  echo "Running YouTube video - Attempt $i"
  curl -L $VIDEO_URL
  sleep 5 # Delay of 5 seconds between each run
done
