const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    headless: false, // Set to true if you want to run in headless mode
    args: ['--no-sandbox', '--disable-setuid-sandbox']
  });
  const page = await browser.newPage();
  await page.goto('https://www.youtube.com/watch?v=dQw4w9WgXcQ'); // Replace with your YouTube video URL
  await page.waitForTimeout(60000); // Wait for 60 seconds to let the video play
  await browser.close();
})();
