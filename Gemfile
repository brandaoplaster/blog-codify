source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.6"

gem "rails", "~> 7.0.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

gem "devise"

group :development, :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 5.1", ">= 5.1.1"
  gem "rufo"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem "listen", "~> 3.3"
  gem "simplecov", "~> 0.21.2"
  gem "shoulda-matchers"
  gem "database_cleaner-active_record", "~> 2.0"
  gem "simplecov", "~> 0.21.2", require: false
end
