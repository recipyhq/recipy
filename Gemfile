source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'redis', '~> 4.0'
gem 'puma', '~> 3.11'
gem 'sidekiq'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'jbuilder', '~> 2.5'
gem 'mjml-rails'
gem 'mini_racer', platforms: :ruby
gem 'mini_magick', '~> 4.8'
gem 'bcrypt', '~> 3.1.7'
gem 'pundit'
gem 'devise'
gem 'devise_token_auth'
gem 'devise-i18n'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'
gem 'simple_form'
gem 'activeadmin'
gem 'phony_rails'
gem 'figaro'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'ffaker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'xray-rails'
  gem 'bundler-audit', require: false
  gem 'brakeman', require: false
  gem 'strong_migrations'
  gem 'bullet'
  gem 'fasterer', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'rubocop-airbnb', require: false
  gem 'rails-erd', require: false
  gem 'overcommit', require: false
end

group :production do
  gem 'rack-timeout'
  gem 'sentry-raven'
  gem 'sqreen'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
