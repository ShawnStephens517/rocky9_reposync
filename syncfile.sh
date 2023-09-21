#!/bin/bash

# Define array of repo names
REPOS=("BaseOS" "extras" "AppStream")
local_repo_dir="/repo"
# Download packages from each repo
for REPO in "${REPOS[@]}"; do
    reposync --newest-only 
done

# Create a tarball of files that were modified within the last 30 days
find * -type f -mtime -30 -print0 | xargs -0 tar -czf "repos_$(date '+%m-%d-%Y').tgz"