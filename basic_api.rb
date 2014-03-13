# Basic gems
gem 'pg'
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-rails', github: 'BrandyMint/grape-swagger-rails'
gem 'carrierwave', :git => 'https://github.com/carrierwaveuploader/carrierwave.git'
gem 'fog', '~> 1.3.1'
gem 'rack-cors', :require => 'rack/cors'
gem 'will_paginate'
gem 'api-pagination', '2.1.1'
gem 'mini_magick'

gem_group :production do
  gem 'unicorn'
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'jquery-rails'
  gem 'turbolinks'
  gem 'factory_girl_rails', require: false
  gem 'ffaker', require: false
  gem 'cpf_faker', require: false
end

gem_group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'ffaker'
  gem 'cpf_faker'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

gem_group :development, :test do
  gem 'awesome_print'
  gem 'pry'
end

inside('app') do
  run 'mkdir api'
  run 'mkdir services'
end

inside('config') do
  run 'cp database.yml database.yml.sample'
end

run 'echo "config/database.yml" > .gitignore'
