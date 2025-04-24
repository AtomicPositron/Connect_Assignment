@echo off
:: Initialize and push main branch
echo # Connect_Assignment >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/AtomicPositron/Connect_Assignment.git
git pull origin main --allow-unrelated-histories  :: Added pull before push
git push -u origin main

:: Build Vue project
echo Building Vue project...
npm run build

:: Deploy to GitHub Pages
cd dist
git init
git add -A
git commit -m "Deploy Vue.js to GitHub Pages"
git pull https://github.com/AtomicPositron/Connect_Assignment.git gh-pages --allow-unrelated-histories  :: Added pull before push
git push -f https://github.com/AtomicPositron/Connect_Assignment.git main:gh-pages
cd ..

echo Done! Project is live at: https://AtomicPositron.github.io/Connect_Assignment/
pause