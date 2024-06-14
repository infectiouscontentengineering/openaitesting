git init
git config --global --edit
git commit --amend --reset-author
git add --all
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:infectiouscontentengineering/openaitesting.git
git push -u origin main
