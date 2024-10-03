#!/bin/bash

# URL of the YouTube video
VIDEO_URL="https://www.youtube.com/shorts/B6ebIDCVXW8" # Replace with your YouTube video URL

# Create a Puppeteer script to play the video
cat <<EOF > play-video.js
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({ headless: false });
  const page = await browser.newPage();
  await page.goto('$VIDEO_URL');
  await page.waitForTimeout(60000); // Wait for 60 seconds to let the video play
  await browser.close();
})();
EOF
# Run the Puppeteer script
node play-video.js
