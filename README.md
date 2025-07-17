# Personal Website - Jekyll Version

This personal website has been converted from static HTML to Jekyll while maintaining the exact same design and functionality. You can now write posts in Markdown and enjoy automated site generation.

## 🔄 Migration Summary

### What Changed:
- ✅ **Jekyll Configuration**: Added `_config.yml` for site settings and GitHub Pages compatibility
- ✅ **Layout Templates**: Created reusable templates in `_layouts/` to eliminate code duplication
- ✅ **Markdown Posts**: Converted HTML posts to Markdown files in `_posts/`
- ✅ **Automated Post Listing**: Writing index now automatically shows all posts
- ✅ **GitHub Pages Ready**: Site builds automatically when pushed to GitHub

### What Stayed the Same:
- ✅ **Exact Same Design**: All CSS and styling preserved
- ✅ **Same URLs**: Post URLs and navigation unchanged  
- ✅ **Same Functionality**: All features work identically
- ✅ **Same Hosting**: Still works with GitHub Pages

## 🚀 Quick Start

### Prerequisites
- Ruby (comes with macOS)
- Bundler gem

### Local Development
```bash
# Install dependencies (first time only)
bundle install

# Start development server
bundle exec jekyll serve

# View your site at:
# http://localhost:4000
```

### Stop Server
```bash
# Press Ctrl+C in terminal
```

## ✍️ Writing New Posts

### 1. Create New Post File
Create a new file in `_posts/` with this naming format:
```
_posts/YYYY-MM-DD-post-title.md
```

Example: `_posts/2024-12-25-my-new-post.md`

### 2. Add Front Matter
Start your post with Jekyll front matter:
```markdown
---
title: "Your Post Title"
date: 2024-12-25
description: "Brief description for SEO and social sharing"
---

Your markdown content goes here...
```

### 3. Write in Markdown
Use standard Markdown syntax:
```markdown
## Headings
**Bold text**
*Italic text*
[Links](https://example.com)
- Bullet points
1. Numbered lists
```

### 4. Preview and Publish
- **Preview locally**: Save the file and refresh http://localhost:4000
- **Publish**: Commit and push to GitHub

## 📁 Project Structure

```
personal-website/
├── _config.yml                 # Jekyll configuration
├── _layouts/
│   ├── default.html            # Base template with header/navigation
│   └── post.html               # Template for writing posts
├── _posts/
│   ├── 2022-06-17-personal-information-space.md
│   └── 2022-07-11-computer-windows-as-attention-streams.md
├── css/
│   └── main.css                # Your existing styles (unchanged)
├── public/                     # Images and assets (unchanged)
├── writing/
│   └── index.html              # Auto-generates post list
├── research/
│   └── index.html              # Research page (now uses Jekyll layout)
├── index.html                  # Homepage (now uses Jekyll layout)
├── Gemfile                     # Ruby dependencies
└── README.md                   # This file
```

## 🌐 Deployment

### GitHub Pages (Automatic)
1. **Commit your changes:**
   ```bash
   git add .
   git commit -m "Add new post"
   git push origin main
   ```

2. **GitHub automatically builds and deploys your site**
   - No additional configuration needed
   - Site updates within a few minutes

### Custom Domain (Optional)
If you have a custom domain, add a `CNAME` file:
```bash
echo "yourdomain.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push origin main
```

## 🎨 Customization

### Updating Site Information
Edit `_config.yml` to change:
- Site title and description
- Author information  
- URL settings

### Modifying Design
- **Styles**: Edit `css/main.css` (your existing CSS)
- **Layout**: Modify files in `_layouts/`
- **Navigation**: Update header in `_layouts/default.html`

### Adding New Pages
Create new `.html` or `.md` files in the root directory with Jekyll front matter:
```markdown
---
title: "New Page"
description: "Page description"
---

Page content here...
```

## 🔧 Troubleshooting

### Common Issues

**1. "Front matter must start at the beginning of the file"**
- Ensure no empty lines or spaces before the `---`
- Front matter must be the very first thing in the file

**2. "Command not found: bundle"**
```bash
gem install bundler
```

**3. "Permission denied" when installing gems**
```bash
bundle install --path vendor/bundle
```

**4. Posts not showing up**
- Check filename format: `YYYY-MM-DD-title.md`
- Ensure date in front matter matches filename
- Verify front matter syntax is correct

**5. Site not updating on GitHub Pages**
- Check GitHub Actions tab for build errors
- Ensure `_config.yml` is properly formatted

### Development Tips

**Hot Reloading**: Jekyll automatically rebuilds when you save files (except `_config.yml`)

**Draft Posts**: Add `published: false` to front matter to hide posts

**Future Posts**: Posts with future dates won't show until that date

## 📝 Writing Tips

### Markdown Cheat Sheet
```markdown
# H1 Heading
## H2 Heading
### H3 Heading

**Bold** and *italic*

[Link text](https://example.com)

![Image alt text](/path/to/image.png)

> Blockquote

`inline code`

```code block```

- Unordered list
1. Ordered list
```

### SEO Best Practices
- Always include `title` and `description` in front matter
- Use descriptive filenames
- Include relevant keywords naturally in content
- Keep descriptions under 160 characters

## 🆘 Getting Help

- **Jekyll Documentation**: https://jekyllrb.com/docs/
- **Markdown Guide**: https://www.markdownguide.org/
- **GitHub Pages**: https://docs.github.com/en/pages

## 🎉 Benefits of This Setup

✅ **Write in Markdown**: Clean, focused writing experience  
✅ **No Code Duplication**: Templates handle repeated HTML  
✅ **Automatic Post Listing**: New posts appear automatically  
✅ **SEO Ready**: Better meta tags and structure  
✅ **Version Control**: Track changes to your content  
✅ **Fast Builds**: GitHub handles deployment automatically  
✅ **Future-Proof**: Easy to add features and modify

---

**Happy writing!** 🚀

Your personal website now combines the simplicity of Markdown with the power of Jekyll, while keeping your beautiful custom design intact.
