#!/bin/bash

# DIRT SIMPLE new post creator
# Usage: ./new-post.sh "My Post Title"

if [ -z "$1" ]; then
    echo "Usage: ./new-post.sh \"Your Post Title\""
    exit 1
fi

# Get title and create filename
TITLE="$1"
DATE=$(date +%Y-%m-%d)
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-zA-Z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
FILEPATH="_posts/${DATE}-${FILENAME}.md"

# Create the post file
cat > "$FILEPATH" << EOF
---
title: "$TITLE"
date: $DATE
description: "Brief description of this post"
---

Write your post content here using **Markdown** syntax.

## Example heading

- Bullet points
- Are easy

And so are [links](https://example.com).

\`\`\`
Code blocks work too!
\`\`\`
EOF

echo "✅ Created new post: $FILEPATH"
echo "📝 Edit the file and add your content"
echo "🚀 When ready, run: git add . && git commit -m \"Add: $TITLE\" && git push"