source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'paperclip', '~> 5.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'devise'
gem 'rename'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem "font-awesome-rails"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
    gem 'better_errors'
    gem 'binding_of_caller'
    gem 'capybara-email'
    gem 'factory_girl_rails'
    gem 'faker'
    gem 'database_cleaner'
    gem 'letter_opener'
    gem 'rspec-rails'
    gem 'pry'
    gem 'pry-nav'
    gem 'pry-rails', '~> 0.3.2'
    gem 'selenium-webdriver'
    gem 'simple_bdd'
    gem 'shoulda-matchers'
    gem 'spring'
    gem 'listen'
    gem 'capistrano', '~> 3.8'
    gem 'capistrano-rails', '~> 1.2', '>= 1.2.3'
    gem 'capistrano-passenger'
    gem 'capistrano-rbenv', '~> 2.0'
  end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
