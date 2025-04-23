@echo off
echo # Connect_Assignment >> README.md
git init
git add *
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/AtomicPositron/Connect_Assignment.git
git push -u origin main

@echo off
echo Building Vue project...
npm run build


npm run build
cd dist
git init
git add -A
git commit -m "Deploy Vue.js to GitHub Pages"
git push -f https://github.com/AtomicPositron/Connect_Assignment.git main:gh-pages
cd ..

echo Done! Project is live at: https://AtomicPositron.github.io/Connect_Assignment/
pause