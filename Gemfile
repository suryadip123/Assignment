source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'faker',                '1.4.2'
gem 'will_paginate',           '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'puma',           '2.11.1' #WEBrick isn’t suitable for production use, so we’ll replace WEBrick with Puma
gem 'bootstrap-sass',       '3.2.0.0' #Bootstrap and custom CSS
gem 'bcrypt',               '3.1.7' # has_secure_password uses state-of-the-art hash function called bcrypt
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :test do
  gem 'minitest-reporters', '1.0.5' #to shpw RED and GREEN colour when testing
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg',             '0.17.1' #Heroku uses the PostgreSQL database
  gem 'rails_12factor', '0.0.2'	#which is used by Heroku to serve static assets such as images and stylesheets
end

