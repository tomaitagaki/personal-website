source "https://rubygems.org"

# Detect environment based on Ruby version
ruby_version = RUBY_VERSION
is_local_dev = ruby_version.start_with?("2.6") || ENV['JEKYLL_ENV'] == 'local'

if is_local_dev
  # Local development (Ruby 2.6.x) - Compatible versions
  gem "jekyll", "~> 3.9.0"
  gem "kramdown", "~> 2.3.0"
else
  # Production/Netlify (Ruby 3.0+) - Latest versions
  gem "jekyll", "~> 4.3"
  gem "webrick", "~> 1.7"
end

# Common gems for both environments
gem "jekyll-feed", "~> 0.12"
gem "jekyll-sitemap"
gem "kramdown-parser-gfm"

group :development do
  gem "listen", "~> 3.0"
end

# Windows and JRuby compatibility (production only)
unless is_local_dev
  platforms :mingw, :x64_mingw, :mswin, :jruby do
    gem "tzinfo", ">= 1", "< 3"
    gem "tzinfo-data"
  end
end 