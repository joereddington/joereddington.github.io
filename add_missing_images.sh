#!/bin/bash
echo $0
cd "$( dirname "${BASH_SOURCE[0]}")"

# Check if the markdown file argument is provided
if [ $# -eq 0 ]; then
  echo "Please provide the markdown file name as an argument."
  exit 1
fi

# Markdown file path
markdown_file="$1"

# Extract image names from markdown file using sed

image_names=$(sed -n 's/.*!\[.*\](\([^)]*\)).*/\1/p' $markdown_file)
echo "Hello"
echo $image_names
echo $(pwd)
# Iterate over each image name and stage the files
for image_name in $image_names; do
  echo "We are here"
  image_path="$(pwd)/$image_name"
  git add -f "$image_path"
done
