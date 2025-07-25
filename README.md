# 🚀 DIRT SIMPLE Jekyll + GitHub Pages + Custom Domain Setup

> **Goal**: Host your Jekyll site on GitHub Pages using `tomaitagaki.com` domain from GoDaddy

This guide will get your site live in **under 10 minutes**. No complicated steps, just copy-paste and follow along.

## 📋 Quick Setup Checklist

- [ ] 1. Push to GitHub (2 minutes)
- [ ] 2. Enable GitHub Pages (1 minute)  
- [ ] 3. Add CNAME file (30 seconds)
- [ ] 4. Configure GoDaddy DNS (5 minutes)
- [ ] 5. Wait for propagation (up to 24 hours)

## 🔥 Step 1: Push Your Site to GitHub

```bash
# If you haven't already, create a GitHub repo and push your code
git add .
git commit -m "Initial Jekyll site"
git push origin main
```

## ⚙️ Step 2: Enable GitHub Pages

1. Go to your GitHub repository
2. Click **Settings** tab
3. Scroll down to **Pages** (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Choose **main** branch and **/ (root)** folder
6. Click **Save**

## 📝 Step 3: Add CNAME File

Create a CNAME file in your repository root:

```bash
echo "tomaitagaki.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push origin main
```

## 🌐 Step 4: Configure GoDaddy DNS

### In GoDaddy DNS Management:

1. **Login to GoDaddy** → Go to your domains → Manage `tomaitagaki.com`
2. **DNS Management** → Manage DNS Records

### Add these DNS records:

| Type | Name | Value | TTL |
|------|------|-------|-----|
| A | @ | `185.199.108.153` | 1 Hour |
| A | @ | `185.199.109.153` | 1 Hour |
| A | @ | `185.199.110.153` | 1 Hour |
| A | @ | `185.199.111.153` | 1 Hour |
| CNAME | www | `yourusername.github.io` | 1 Hour |

**Replace `yourusername` with your actual GitHub username**

### Delete any existing records:
- Delete existing A records pointing to other IPs
- Delete existing CNAME records for @ or www

## ✅ Step 5: Verify Setup

1. **Check GitHub Pages**: Go to Settings → Pages and verify custom domain shows `tomaitagaki.com`
2. **Wait for DNS**: Can take up to 24 hours (usually much faster)
3. **Test your site**: Visit `https://tomaitagaki.com`

## 🔄 Daily Workflow (Writing Posts)

### Write a new post:
```bash
# 1. Create new post file
touch _posts/$(date +%Y-%m-%d)-my-new-post.md

# 2. Add front matter and content:
cat > _posts/$(date +%Y-%m-%d)-my-new-post.md << 'EOF'
---
title: "My New Post Title"
date: 2024-12-25
description: "Brief description"
---

Write your content here in **Markdown**...
EOF

# 3. Preview locally (optional)
bundle exec jekyll serve
# Visit: http://localhost:4000

# 4. Publish to live site
git add .
git commit -m "Add new post"
git push origin main
```

Your site updates automatically within 2-3 minutes! 🎉

## 🆘 Troubleshooting

### "Domain not working after 24 hours"
```bash
# Check DNS propagation
nslookup tomaitagaki.com
dig tomaitagaki.com A
```
Should show the GitHub Pages IPs listed above.

### "Site shows 404"
- Make sure CNAME file contains exactly: `tomaitagaki.com`
- Check GitHub Pages settings show your custom domain
- Verify DNS records are exactly as listed above

### "HTTPS not working"
- Wait 24-48 hours after DNS setup
- GitHub automatically provisions SSL certificates
- Check GitHub Pages settings for SSL status

### "Site not updating"
- Check GitHub Actions tab for build errors
- Ensure `_config.yml` has correct `url: "https://tomaitagaki.com"`

## 📁 Important Files

```
your-site/
├── CNAME                    # Contains: tomaitagaki.com
├── _config.yml             # url: "https://tomaitagaki.com"  
├── _posts/                 # Your blog posts
│   └── YYYY-MM-DD-title.md
└── index.html              # Homepage
```

## 🎯 That's It!

Your Jekyll site is now:
- ✅ Hosted on GitHub Pages (free!)
- ✅ Using your custom domain `tomaitagaki.com`
- ✅ Automatically building when you push changes
- ✅ SSL-enabled (https://)
- ✅ Lightning fast

## 📱 Quick Commands Reference

```bash
# Write new post
./new-post.sh "Post Title"

# Preview locally  
bundle exec jekyll serve

# Publish changes
git add . && git commit -m "Update site" && git push

# Check site status
curl -I https://tomaitagaki.com
```

---

**🎉 Congratulations!** Your site is live at https://tomaitagaki.com

Need help? The setup is designed to be bulletproof, but if something breaks, check the troubleshooting section above.
