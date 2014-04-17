source 'https://rubygems.org'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#database adapter
group	:developement do
  gem 'mysql2'
  gem 'faker'
end


group :test do
	gem 'mysql2'
	gem 'selenium'
	gem 'selenium-rake'
	gem 'selenium-webdriver'
	gem 'rspec'
	gem 'fixture_builder'
	gem 'cucumber'
end

gem 'rails_admin'
gem 'devise'
gem 'simple_form'

#user interface Twitter Bootstrap Framework
#gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
group :production do
	gem 'pg'
	gem 'passenger'
end

gem 'rails_12factor'



#Uploading Functionality
gem "rmagick"
gem "carrierwave"


#role based authrization
gem 'cancan'

#JS EDITOR FOR ADMIN
gem 'ckeditor'

gem 'rails_admin_jcrop' 
gem "rails_admin_import", :git => "git://github.com/stephskardal/rails_admin_import.git"

#Serve Static files 
gem 'rails_12factor'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'less-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
gem 'jbuilder'

# Use unicorn as the app server
 gem 'unicorn'

# Deploy with Capistrano
 gem 'capistrano'

# To use debugger
 gem 'debugger'
