# Personal Website - Jekyll + Netlify

This personal website has been converted from static HTML to Jekyll and deploys automatically via Netlify while maintaining the exact same design and functionality. You can now write posts in Markdown and enjoy automated site generation.

## 🚀 Quick Setup (10 minutes)

### Prerequisites
- GitHub account
- Netlify account (free)
- GoDaddy domain (tomaitagaki.com)

## 📋 Step-by-Step Deployment

### Step 1: Connect to Netlify
1. Go to [netlify.com](https://netlify.com) and sign up/login
2. Click **Add new site** → **Import an existing project**
3. Choose **GitHub** and authorize Netlify
4. Select your `personal-website` repository
5. Netlify auto-detects Jekyll settings (thanks to `netlify.toml`)
6. Click **Deploy site**

### Step 2: Configure Custom Domain in Netlify
1. In your Netlify dashboard, go to **Site settings** → **Domain management**
2. Click **Add custom domain**
3. Enter `tomaitagaki.com` and click **Verify**
4. Click **Add domain**
5. Also add `www.tomaitagaki.com` as an alias (optional)

### Step 3: Configure DNS in GoDaddy
1. **Login to GoDaddy** → Go to your domains → Manage `tomaitagaki.com`
2. **DNS Management** → Manage DNS Records
3. **Delete any existing A/CNAME records** for @ and www
4. **Add these records:**

| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | @ | `your-site-name.netlify.app` | 1 Hour |
| CNAME | www | `your-site-name.netlify.app` | 1 Hour |

**Replace `your-site-name` with your actual Netlify site name (found in Netlify dashboard)**

### Step 4: Verify & Wait
1. **Check Netlify Dashboard**: Verify custom domain shows as configured
2. **Wait for DNS**: Usually 15 minutes to 2 hours (can take up to 24 hours)
3. **Test your site**: Visit `https://tomaitagaki.com`

## ✍️ Writing New Posts

### Create a new post:
```bash
# 1. Use the included script (recommended)
./new-post.sh "Your Post Title"

# 2. Or create manually
touch _posts/$(date +%Y-%m-%d)-my-new-post.md
```

### 2. Add front matter and content:
```markdown
---
title: "Your Post Title"
date: 2024-12-25
description: "Brief description for SEO and social sharing"
---

Your markdown content goes here...

## Headings work
**Bold text** and *italic text*
[Links](https://example.com)
- Bullet points
1. Numbered lists
```

### 3. Preview locally (optional):
```bash
bundle install
bundle exec jekyll serve
# Visit: http://localhost:4000
```

### 4. Publish to live site:
```bash
git add .
git commit -m "Add new post"
git push origin main
```

## 📁 Project Structure

```
personal-website/
├── netlify.toml             # Netlify build configuration
├── _config.yml              # Jekyll configuration
├── _layouts/
│   ├── default.html         # Base template with header/navigation
│   └── post.html            # Template for writing posts
├── _posts/
│   ├── 2022-06-17-personal-information-space.md
│   └── 2022-07-11-computer-windows-as-attention-streams.md
├── css/
│   └── main.css             # Your existing styles (unchanged)
├── public/                  # Images and assets (unchanged)
├── writing/
│   └── index.html           # Auto-generates post list
├── research/
│   └── index.html           # Research page
├── index.html               # Homepage
├── new-post.sh              # Utility script for creating posts
├── Gemfile                  # Ruby dependencies
└── README.md                # This file
```

## 🔧 Troubleshooting

### Build Failures in Netlify
- Check the **Deploys** tab in Netlify for error details
- Common fix: Clear cache and retry deploy
- Ensure `netlify.toml` and `Gemfile` are properly configured

### Domain Not Working
```bash
# Check DNS propagation
nslookup tomaitagaki.com
dig tomaitagaki.com CNAME
```
Should point to your Netlify site URL.

### Site Shows 404
- Verify custom domain is correctly set in Netlify
- Check DNS records point to correct Netlify URL
- Ensure `_config.yml` has correct `url: "https://tomaitagaki.com"`

### HTTPS Not Working
- Netlify automatically provisions SSL certificates
- Usually works within 30 minutes of DNS setup
- Check Domain settings in Netlify for SSL status

## 🔒 Security & Privacy

This repository is **public** and has been cleaned to ensure:
- ✅ No sensitive information (API keys, passwords, tokens)
- ✅ No build artifacts or temporary files
- ✅ No personal system files (.DS_Store, editor configs)
- ✅ Comprehensive .gitignore for future protection

### Contributing Guidelines
- Never commit sensitive information
- Use environment variables for any secrets
- Keep personal information in content only (not code)
- Review changes before pushing to public repo

## 🎯 Benefits of This Setup

✅ **Write in Markdown**: Clean, focused writing experience  
✅ **Automatic Deployments**: Push to GitHub = instant live updates  
✅ **Custom Domain**: Professional `tomaitagaki.com` URL  
✅ **Free SSL**: Automatic HTTPS certificate  
✅ **Fast Performance**: Netlify's global CDN  
✅ **Form Handling**: Can add contact forms easily  
✅ **Preview Deploys**: See changes before they go live  

## 📱 Daily Workflow

```bash
# Write new post
./new-post.sh "Post Title"

# Preview locally (optional)
bundle exec jekyll serve

# Publish changes
git add . && git commit -m "Add new post" && git push

# Check site status
curl -I https://tomaitagaki.com
```

---

**🎉 Your site is live at https://tomaitagaki.com**

The Jekyll site automatically builds and deploys to Netlify whenever you push changes to GitHub. Write in Markdown, push to GitHub, and your site updates within minutes!
