#!/bin/bash

# Fetch all branches from the remote
git fetch --all

# List all branches
echo "Listing all branches:"
git branch -a

# Merge branches whose names begin with 'ready' into main
# Switch to main branch
git checkout main

# For each branch starting with 'ready', merge into main
for branch in $(git branch -r | grep 'origin/ready'); do
    # Extract the branch name
    branch_name=${branch#origin/}
    echo "Merging $branch_name into main..."
    
    # Checkout the branch
    git checkout main
    
    # Merge the branch
    git merge "$branch_name" || { echo "Merge conflict occurred with $branch_name"; exit 1; }
    
    # Delete the remote branch
    git push origin --delete "$branch_name"
    
    # Delete the local branch
    git branch -d "$branch_name"
done

# Update branches whose names begin with 'update' with latest changes from main
# For each branch starting with 'update', rebase with main
for branch in $(git branch -r | grep 'origin/update'); do
    # Extract the branch name
    branch_name=${branch#origin/}
    echo "Updating $branch_name with latest changes from main..."
    
    # Checkout the branch
    git checkout "$branch_name"
    
    # Rebase the branch with the latest changes from main
    git rebase main
    
    # Push the updated branch to the remote
    git push --force
done
