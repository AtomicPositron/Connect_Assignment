@echo off
:: ==============================================
:: Main Repository Setup
:: ==============================================
echo Initializing repository...
echo # Connect_Assignment >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/AtomicPositron/Connect_Assignment.git

:: Pull before push to avoid conflicts
echo Synchronizing with remote...
git pull origin main --allow-unrelated-histories || (
  echo Warning: Pull failed, attempting to push anyway...
)
git push -u origin main

:: ==============================================
:: Vue Project Build
:: ==============================================
echo Building Vue project...
npm run build || (
  echo Build failed!
  pause
  exit /b 1
)

:: ==============================================
:: GitHub Pages Deployment
:: ==============================================
echo Deploying to GitHub Pages...
cd dist
git init
git add -A
git commit -m "Deploy Vue.js to GitHub Pages"

:: Pull gh-pages branch before force push
git pull https://github.com/AtomicPositron/Connect_Assignment.git gh-pages --allow-unrelated-histories || (
  echo Warning: Couldn't pull gh-pages, proceeding with force push...
)
git push -f https://github.com/AtomicPositron/Connect_Assignment.git main:gh-pages
cd ..

:: ==============================================
:: Completion
:: ==============================================
echo.
echo Deployment successful!
echo Your app is now live at: https://AtomicPositron.github.io/Connect_Assignment/
pause