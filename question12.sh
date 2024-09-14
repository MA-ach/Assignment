#!/bin/bash
git checkout branch2
git stash pop
git add file4
git commit -m "Restore and commit file4 changes"
