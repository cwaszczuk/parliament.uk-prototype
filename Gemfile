source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.0.1'

gem 'json-ld', '~> 2.1'
gem 'vcard', '~> 0.2'

# Parliament Ruby is a wrapper for the internal Parliament data API
 gem 'parliament-ruby', '~> 0.7'

# Parliament NTriple processes N-triple data
gem 'parliament-ntriple', '~> 0.1', require: false

# Parliament Grom Decorators decorates Grom nodes
gem 'parliament-grom-decorators', '~> 0.2'

# Converts GeoSparql to GeoJSON
gem 'geosparql_to_geojson', '~> 0.1'

# Client for Bandiera feature flagging
gem 'bandiera-client'

# Pugin is the front-end component library used by Parliament
gem 'pugin', '~> 0.9'

# HAML is used for front-end template rendering
gem 'haml', '~> 5.0'

# Include time zone information
gem 'tzinfo-data'

# Use Puma as our web server
gem 'puma'
gem 'rack-timeout'

# Gem to remove trailing slashes
gem 'rack-rewrite'

# Manually update mail to account for security issues
gem 'mail', '~> 2.6'

# Gem to sanitize html into safe format
gem 'sanitize'
# Use Airbrake for production error reporting
gem 'airbrake', '~> 6.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # In development and test environments, use the dotenv gem
  gem 'dotenv-rails'

  # Use foreman as a gem in dev and test to orchestrate both the app and api
  gem 'foreman'
  gem 'subcontractor'

  # Use parallel_tests to run specs across all CPU cores locally
  gem 'parallel_tests'

  # Use Rubocop for static code quality analysis
  gem 'rubocop'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'web-console'

  gem 'pry'
end

group :test do
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', '~> 0.14', require: false
  gem 'webmock'
  gem 'vcr'
end
