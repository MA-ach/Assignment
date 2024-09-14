#!/bin/bash

# Clone the repository (manually or separately, not included in the script)
# git clone https://github.com/ian-knight-uofa/git-practice-03.git
# cd git-practice-03

# Create and switch to branch1
git checkout -b branch1

# Set up the structure for branch1
# Remove existing directories and files as needed
rm -rf dir1/dir2 dir3/bar_copy

# Create new files and directories as required
mkdir -p dir1
touch dir1/foo

mkdir -p dir3
touch dir3/bar

touch newfile1

# Add and commit the changes in branch1
git add .
git commit -m "Set up branch1 with the required structure"

# Create and switch to branch2
git checkout -b branch2

# Set up the structure for branch2
# Remove existing directories and files as needed
rm -rf dir1/dir3 bar_copy

# Create new files and directories as required
mkdir -p dir1/dir2
touch dir1/dir2/foo_modified

mkdir -p dir1/dir3
touch dir1/dir3/newfile2

# Add and commit the changes in branch2
git add .
git commit -m "Set up branch2 with the required structure"

# Switch back to main branch
git checkout main
