#!/bin/bash

# Initialize a new Git repository
git init

# Create a README file
echo "# My Project" > README.md

# Add README file to staging
git add README.md

# Commit the changes
git commit -m "Initial commit with README"
