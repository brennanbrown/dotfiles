#!/bin/bash
#
# This script builds and deploys a Jekyll site to a remote Git repository.
#

# Change to the Jekyll site directory
cd ~/Projects/jamstack/my-jekyll-site

# Install Ruby gem dependencies
bundle install

# Build the Jekyll site
bundle exec jekyll build

# Add the generated site files to Git
git add .

# Commit the changes
git commit -m "Site build"

# Push the changes to the remote repository
git push origin master

echo "Jekyll site deployed successfully!"
