source 'https://gems.ruby-china.com/'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'

gem 'rails', '~> 5.1.7'
gem 'mysql2'
gem 'pundit'
gem 'i18n'

gem 'unicorn'
gem 'puma'
gem 'yettings'
gem 'mina', '0.3.7'
gem 'mina-sidekiq', :require => false
gem 'mina-unicorn', :require => false

gem 'sass-rails', '~> 5.0', '>= 5.0.5'
gem 'sass'
gem 'font-awesome-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'gon'
gem 'bootsnap', '~> 1.4', '>= 1.4.6'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.5'

gem 'therubyracer'
gem 'rest-client'

gem 'ransack'

gem 'ancestry'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'will_paginate', '~> 3.1.0'

gem "redis",'< 5', '>= 3.3.5'
gem "hiredis"
gem 'sidekiq', '5.2.1'
gem 'sinatra', require: false

group :development, :test do
  gem 'pry'
  gem "pry-nav"
  gem 'pry-rails', '0.3.2' # binding.pry
end

group :development do
  gem 'listen', '~> 3.0.5'
end

gem "signature"
gem 'symmetric-encryption'

gem 'bootstrap-sass'
gem 'will_paginate-bootstrap'



