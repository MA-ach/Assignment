git checkout -b branch2
touch file4
git add file4
git commit -m "Add file4 in branch2"
echo "Some changes: >> file4
git stash push -m "Stashing changes before switching back to main"
git checkout main
