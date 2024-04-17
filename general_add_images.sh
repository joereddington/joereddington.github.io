#!/bin/bash

# Change directory to the location of the script
cd "$(dirname "${BASH_SOURCE[0]}")"

# Directory containing markdown files
posts_dir="_posts"

# Check if the _posts directory exists
if [ ! -d "$posts_dir" ]; then
  echo "The directory '$posts_dir' does NOT exist."
  exit 1
fi

# Iterate over all markdown files in the _posts directory
for markdown_file in "$posts_dir"/*.markdown; do
  # Check if there are any markdown files
  if [ ! -f "$markdown_file" ]; then
    echo "No markdown files found in $posts_dir."
    continue
  fi

  echo "Processing $markdown_file"

  # Extract image names from markdown file using sed
  image_names=$(sed -n 's/.*!\[.*\](\([^)]*\)).*/\1/p' "$markdown_file")
  echo "Images found: $image_names"
  
  # Iterate over each image name and stage the files
  for image_name in $image_names; do
    image_path="$(pwd)/$image_name"
    echo "Adding $image_path"
    git add -f "$image_path"
  done
done

