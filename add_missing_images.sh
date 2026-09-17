#!/bin/bash

echo "$0"
cd "$(dirname "${BASH_SOURCE[0]}")"

if [ $# -eq 0 ]; then
  echo "Please provide the markdown file name as an argument."
  exit 1
fi

markdown_file="$1"

# Extract targets from both images and ordinary Markdown links.
linked_files=$(
  sed -nE 's/.*!?\[[^]]*\]\(([^)]*)\).*/\1/p' "$markdown_file"
)

echo "Files found:"
echo "$linked_files"
echo "Working directory: $(pwd)"

while IFS= read -r linked_file; do
  [ -z "$linked_file" ] && continue

  # Ignore external links.
  case "$linked_file" in
    http://*|https://*|mailto:*)
      continue
      ;;
  esac

  # Decode spaces in URL-style paths.
  linked_file="${linked_file//%20/ }"

  # Markdown root-relative paths such as /assets/foo.png
  # should be relative to the repository root.
  linked_file="${linked_file#/}"

  echo "Adding: $linked_file"
  git add -f -- "$linked_file"
done <<< "$linked_files"
