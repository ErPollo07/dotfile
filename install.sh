#!/bin/bash

# Find all folders in the current dir (excluding .git and .)
folders=$(find . -maxdepth 1 -type d ! -name ".git" ! -name "." -exec basename {} \;)

# Count how many folders there are (just for info)
count=$(echo "$folders" | wc -l)
echo "📦 Found $count folders. Running stow..."

# Loop through each folder and run stow
for folder in $folders; do
    echo "🔗 Stowing $folder"
    stow "$folder"
done

echo "✅ DONE stowing all packages"

