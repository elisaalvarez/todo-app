# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2.3'
gem 'redis', '~> 4.0'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.5'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.8'
end

group :test do
  gem 'database_cleaner', '~> 1.5'
  gem 'faker'
  gem 'shoulda-matchers', '~> 3.0', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'bootstrap', '~> 4.3'
gem 'devise', '~> 4.7'
gem 'jquery-rails', '~> 4.3'
gem 'rails-controller-testing'
gem 'sidekiq', '~> 5.2'
gem 'sidekiq-scheduler', '~> 3.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'wicked_pdf', '~> 1.4'
gem 'wkhtmltopdf-binary', '~> 0.12.4'
