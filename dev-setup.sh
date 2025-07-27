#!/bin/bash

# Local Development Setup Script
echo "🔧 Setting up local Jekyll development environment..."

# Create local environment file (gitignored)
cat > .env.local << EOF
# Local development environment variables
JEKYLL_ENV=local
BUNDLE_GEMFILE=Gemfile
RUBY_VERSION=2.6.10

# Local development settings  
JEKYLL_PORT=4001
JEKYLL_HOST=127.0.0.1
EOF

# Use local Ruby version if available
if [ -f ".ruby-version.local" ]; then
    cp .ruby-version.local .ruby-version
    echo "✅ Using local Ruby version: $(cat .ruby-version.local)"
fi

# Clean and install gems
echo "📦 Installing gems for local environment..."
export JEKYLL_ENV=local
rm -f Gemfile.lock
bundle install

echo "🎉 Local development environment ready!"
echo "📝 Run: bundle exec jekyll serve"
echo "🌐 Visit: http://localhost:4000" 