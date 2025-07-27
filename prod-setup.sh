#!/bin/bash

# Production Setup Script
echo "🚀 Setting up production Jekyll environment..."

# Restore production Ruby version
echo "3.0.6" > .ruby-version
echo "✅ Using production Ruby version: 3.0.6"

# Clean and install gems for production
echo "📦 Installing gems for production environment..."
unset JEKYLL_ENV
rm -f Gemfile.lock
bundle install

echo "🎉 Production environment ready!"
echo "🚀 Ready to push to GitHub/Netlify" 