#!/bin/sh

# Fail immediately on error
set -e

# Validate input
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <SDK_VERSION>"
  exit 1
fi

SDK_VERSION=$1

cd "$(dirname "$0")"   # go to identitymediumsdk2.0/

# # Check if branch is clean
# if [ -n "$(git status --porcelain)" ]; then
#  echo "✅ LiteSDK: Found uncommitted changes, proceeding."
# else
#  echo "❌ LiteSDK: No changes to commit. Working tree is clean."
#  exit 1
# fi

# Check if tag already exists
if git rev-parse "$SDK_VERSION" >/dev/null 2>&1; then
  echo "❌ Tag '$SDK_VERSION' already exists. Please choose a different version."
  exit 1
fi

# Commit changes
echo "🚀 LiteSDK: Adding & committing changes…"
git add .
git commit -m "Updated SDK v${SDK_VERSION}"

# Push to remote master
echo "⬆️ LiteSDK: Pushing to origin master…"
git push origin main

# Create & push tag
echo "🏷️ LiteSDK: Creating and pushing tag '${SDK_VERSION}'…"
git tag "${SDK_VERSION}"
git push origin "${SDK_VERSION}"

echo "✅ Done! LiteSDK updated and tagged as '${SDK_VERSION}'."
