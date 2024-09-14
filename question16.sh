#!/bin/bash

# Switch to branch2
git checkout branch2

# Merge branch3 into branch2
git merge branch3

# Resolve any merge conflicts (this step requires manual intervention)
# You need to open the conflicted files, resolve the conflicts, and then stage the resolved files
# Example of resolving conflicts manually:
# vim <conflicted-file>
# git add <conflicted-file>

# Commit the merge if there were conflicts resolved
git commit -m "Merge branch3 into branch2 and resolve conflicts"

# Delete branch3
git branch -d branch3

# Push the changes to the remote repository
git push origin --delete branch3
