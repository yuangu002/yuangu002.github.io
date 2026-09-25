source "https://rubygems.org"

# GitHub Pages builds this site with the github-pages gem (Jekyll 3.x, minima theme), so local
# builds use the same versions. Upgrade with `bundle update github-pages`, then preview with
# `bundle exec jekyll serve`.
gem "github-pages", "~> 232", group: :jekyll_plugins

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
end

# github-pages' octokit/sawyer stack predates json 3, whose JSON.parse no longer takes an
# options hash (breaks builds wherever an older multi_json is on the load path).
gem "json", "< 3"

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Ruby 3+ no longer bundles webrick, which `jekyll serve` needs.
gem "webrick", "~> 1.8"
