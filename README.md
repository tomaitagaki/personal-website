# Personal Website - Jekyll + Netlify

This personal website uses Jekyll with an **environment-adaptive configuration** that works seamlessly for both local development and production deployment.

## 🚀 Quick Setup

### For Local Development:
```bash
# One-time setup
./dev-setup.sh

# Start writing 
bundle exec jekyll serve
# Visit: http://localhost:4000
```

### For Production Deployment:
```bash
# Restore production config (if needed)
./prod-setup.sh

# Deploy
git add . && git commit -m "New content" && git push
```

## 🔧 Environment-Adaptive Configuration

This setup automatically detects your environment and uses appropriate configurations:

### 🖥️ Local Development (Ruby 2.6.x):
- **Jekyll 3.9.5** - Stable and compatible
- **Simplified dependencies** - No native extension issues
- **Fast startup** - Optimized for local preview

### 🌐 Production (Ruby 3.0+):
- **Jekyll 4.x** - Latest features and performance 
- **Modern dependencies** - Full feature set
- **Netlify optimized** - Fast builds and deployment

## ✍️ Daily Writing Workflow

### 1. Start Local Development:
```bash
# Setup (first time only)
./dev-setup.sh

# Start preview server
bundle exec jekyll serve

# Create new post
./new-post.sh "My Post Title"
```

### 2. Write and Preview:
- **Edit posts** in `_posts/` using Markdown
- **See changes live** at http://localhost:4000
- **No rebuild needed** - changes appear automatically

### 3. Publish:
```bash
# Commit your content
git add _posts/ public/ index.html  # Add content files
git commit -m "Add new post: My Post Title"

# Push to deploy (auto-builds on Netlify)
git push origin main
```

Your site updates automatically within 1-2 minutes! 🎉

## 📁 Project Structure

```
personal-website/
├── dev-setup.sh             # 🔧 Local development setup
├── prod-setup.sh             # 🚀 Production setup  
├── Gemfile                   # 🔄 Environment-adaptive dependencies
├── _config.yml               # Jekyll configuration
├── _layouts/
│   ├── default.html          # Base template
│   └── post.html             # Post template
├── _posts/                   # 📝 Your writing (Markdown)
├── writing/index.html        # Auto-generates post list
├── research/index.html       # Research showcase
├── public/                   # Images and assets
├── css/main.css              # Styling
├── new-post.sh               # Utility for creating posts
└── README.md                 # This file
```

## 🔄 Environment Files (Gitignored)

These files are created locally but not tracked in git:

```
.env.local                    # Local environment variables
.ruby-version.local           # Local Ruby version override
Gemfile.lock                  # Environment-specific lock file
```

## 🎯 Benefits of This Setup

✅ **Single Branch Workflow** - No more branch switching  
✅ **Auto-Detection** - Automatically uses correct configuration  
✅ **Zero Conflicts** - Local and production configs never clash  
✅ **Simple Commands** - `./dev-setup.sh` and you're ready  
✅ **Professional** - Industry-standard environment management  

## 🔧 Troubleshooting

### Local Development Issues:
```bash
# Reset local environment
./dev-setup.sh

# If gems are conflicting
rm -rf vendor/ .bundle/ Gemfile.lock
bundle install
```

### Production Deployment Issues:
```bash
# Verify production config
./prod-setup.sh

# Check Netlify build logs in dashboard
```

### Environment Detection:
The system detects your environment by:
1. **Ruby version** (2.6.x = local, 3.0+ = production)
2. **Environment variable** `JEKYLL_ENV=local`

## 📝 Writing Tips

### Create New Posts:
```bash
# Using the helper script (recommended)
./new-post.sh "Your Post Title"

# Manual creation
touch _posts/$(date +%Y-%m-%d)-post-title.md
```

### Post Template:
```markdown
---
title: "Your Post Title"
date: 2024-12-25
description: "Brief description for SEO"
---

Your markdown content here...

## Headings work
**Bold** and *italic* text
[Links](https://example.com)
- Bullet points
1. Numbered lists
```

## 🔒 Security & Privacy

✅ **No sensitive information** in public repository  
✅ **Environment files gitignored** - Local configs stay local  
✅ **Production configs tracked** - Deployment always works  
✅ **Clean separation** - Development and production isolated  

## 🆘 Common Commands

```bash
# Local development
./dev-setup.sh && bundle exec jekyll serve

# Create new post
./new-post.sh "Post Title"

# Publish changes
git add . && git commit -m "New content" && git push

# Reset environment
./prod-setup.sh  # or ./dev-setup.sh

# Check environment
bundle exec jekyll --version
```

---

**🎉 Your site is live at https://tomaitagaki.com**

Write locally with instant preview, push to deploy automatically. The perfect Jekyll workflow! ⚡
