# 🚀 DIRT SIMPLE Jekyll Hosting + Custom Domain Setup

> **Goal**: Host your Jekyll site using `tomaitagaki.com` domain from GoDaddy

This guide will get your site live in **under 10 minutes**. Choose your hosting platform and follow along.

## 🎯 Choose Your Hosting Platform

### Option A: GitHub Pages (Free, Simple)
- ✅ Completely free
- ✅ Automatic deployments  
- ✅ Great for simple sites
- ❌ Limited Jekyll plugins

### Option B: Netlify (Free, More Features)
- ✅ Free tier available
- ✅ More Jekyll plugins supported
- ✅ Form handling, redirects
- ✅ Faster builds

## 📋 Quick Setup Checklist

### For GitHub Pages:
- [ ] 1. Push to GitHub (2 minutes)
- [ ] 2. Enable GitHub Pages (1 minute)  
- [ ] 3. Add CNAME file (30 seconds)
- [ ] 4. Configure GoDaddy DNS (5 minutes)
- [ ] 5. Wait for propagation (up to 24 hours)

### For Netlify:
- [ ] 1. Push to GitHub (2 minutes)
- [ ] 2. Connect to Netlify (2 minutes)
- [ ] 3. Configure custom domain (2 minutes)
- [ ] 4. Configure GoDaddy DNS (5 minutes)
- [ ] 5. Wait for propagation (up to 24 hours)

## 🔥 Step 1: Push Your Site to GitHub

```bash
# If you haven't already, create a GitHub repo and push your code
git add .
git commit -m "Initial Jekyll site"
git push origin main
```

## ⚙️ Step 2A: Enable GitHub Pages

1. Go to your GitHub repository
2. Click **Settings** tab
3. Scroll down to **Pages** (left sidebar)
4. Under **Source**, select **Deploy from a branch**
5. Choose **main** branch and **/ (root)** folder
6. Click **Save**

## ⚙️ Step 2B: OR Connect to Netlify

1. Go to [netlify.com](https://netlify.com) and sign up/login
2. Click **Add new site** → **Import an existing project**
3. Choose **GitHub** and authorize Netlify
4. Select your `personal-website` repository
5. Netlify auto-detects Jekyll settings (thanks to our `netlify.toml`)
6. Click **Deploy site**

## 📝 Step 3: Configure Custom Domain

### For GitHub Pages:
Create a CNAME file in your repository root:

```bash
echo "tomaitagaki.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push origin main
```

### For Netlify:
1. In your Netlify dashboard, go to **Site settings** → **Domain management**
2. Click **Add custom domain**
3. Enter `tomaitagaki.com` and click **Verify**
4. Click **Add domain**
5. Also add `www.tomaitagaki.com` as an alias

## 🌐 Step 4: Configure GoDaddy DNS

### In GoDaddy DNS Management:

1. **Login to GoDaddy** → Go to your domains → Manage `tomaitagaki.com`
2. **DNS Management** → Manage DNS Records

### Add these DNS records:

#### For GitHub Pages:
| Type | Name | Value | TTL |
|------|------|-------|-----|
| A | @ | `185.199.108.153` | 1 Hour |
| A | @ | `185.199.109.153` | 1 Hour |
| A | @ | `185.199.110.153` | 1 Hour |
| A | @ | `185.199.111.153` | 1 Hour |
| CNAME | www | `yourusername.github.io` | 1 Hour |

**Replace `yourusername` with your actual GitHub username**

#### For Netlify:
| Type | Name | Value | TTL |
|------|------|-------|-----|
| CNAME | @ | `your-site-name.netlify.app` | 1 Hour |
| CNAME | www | `your-site-name.netlify.app` | 1 Hour |

**Replace `your-site-name` with your actual Netlify site name**

### Delete any existing records:
- Delete existing A records pointing to other IPs
- Delete existing CNAME records for @ or www

## ✅ Step 5: Verify Setup

### For GitHub Pages:
1. **Check GitHub Pages**: Go to Settings → Pages and verify custom domain shows `tomaitagaki.com`
2. **Wait for DNS**: Can take up to 24 hours (usually much faster)
3. **Test your site**: Visit `https://tomaitagaki.com`

### For Netlify:
1. **Check Netlify Dashboard**: Verify custom domain shows as configured
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
