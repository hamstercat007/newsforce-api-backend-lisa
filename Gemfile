source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'puma', '~> 5.0'
gem 'dotenv'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'pg'
gem 'acts-as-taggable-on'
gem 'whenever'
gem 'rest-client'
gem 'rack-cors'
gem "news-api", "~> 0.2.0"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'rubocop-rails'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "jbuilder", "~> 2.11"
