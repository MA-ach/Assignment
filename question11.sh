#!/bin/bash
git checkout -b branch2
touch file4
git add file4
git commit -m "Add file4 in branch2"
echo "Initial content" > file4
git add file4
git commit -m "Modify file4 in branch2"
git stash
git checkout main
