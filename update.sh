#!/bin/bash
set -e
git remote add upstream git@github.com:standardnotes/app.git || true
git checkout main
git fetch upstream
git rebase upstream/main
git push
git checkout fork
git merge main
