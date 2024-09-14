#!/bin/bash

# Switch back to branch2
git checkout branch2

# Apply the stashed changes
git stash pop

# Stage the restored changes
git add file4

# Commit the changes with a message
git commit -m "Restore and commit changes to file4"
