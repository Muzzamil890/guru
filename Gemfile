source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'unicorn', '~> 5.7'
gem 'nokogiri', '~> 1.10', '>= 1.10.10'
gem 'devise', '~> 4.7', '>= 4.7.2'
gem 'carrierwave', '~> 2.1'
gem 'mini_magick', '~> 4.10', '>= 4.10.1'
gem 'classy_enum', '~> 4.0'
gem 'delocalize', '~> 1.2'
gem 'validates_timeliness', '~> 4.1', '>= 4.1.1'
# gem 'carmen-rails', '~> 1.0', '>= 1.0.1'
gem 'state_machine', '~> 1.2'
# gem 'strong_parameters'
gem 'kaminari', '~> 1.2', '>= 1.2.1'
gem 'bootstrap-kaminari-views'
gem 'newrelic_rpm', '~> 6.12', '>= 6.12.0.367'
gem 'cells', '~> 4.1', '>= 4.1.7'
gem "trailblazer-cells"
gem 'cells-rails'
gem 'hamlit'
gem 'bootstrap-sass'
gem 'autoprefixer-rails', '~> 9.8', '>= 9.8.6.3'
gem 'jquery-rails', '~> 4.4'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'font-awesome-rails'
gem 'inherited_resources', '~> 1.11'

gem 'haml', '~> 5.1', '>= 5.1.2'
gem 'haml-rails', '~> 2.0', '>= 2.0.1'
gem 'activeadmin', '~> 2.8'

gem 'fog'
gem 'searchkick', '~> 4.4', '>= 4.4.1'
#_ gem 'quiet_assets'
# gem 'routing_concerns'
gem 'groupdate'
gem 'hightop', '~> 0.2.4'
gem 'chartkick'
gem 'highcharts-rails'
gem 'faker', '~> 2.13'
gem 'momentjs-rails'
gem 'fullcalendar-bootstrap-rails'
# gem 'fullcalendar-rails'
# gem 'momentjs-rails'
# gem 'active_admin_flat_skin'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a d
  # ebugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'spring'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'guard', '~> 2.16', '>= 2.16.2'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'rb-fsevent', '~> 0.10.4'
  gem 'figaro', '~> 1.2'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'better_errors', '~> 2.7', '>= 2.7.1'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'meta_request'
  gem 'mailcatcher'
  gem 'foreman'
  gem 'brakeman', require: false
  gem 'pry-rails'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'factory_girl_rails'
  gem 'forgery'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'zonebie'
  gem 'rspec-cells'
  gem 'poltergeist'
  gem 'timecop'
  gem 'fuubar'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :production do
  gem 'rails_12factor'
  gem 'rails_serve_static_assets'
  gem 'sentry-raven'
end

# Gems used only for assets and not required
# in production environments by default.
# group :assets do
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'bootstrap-colorpicker-rails'
gem 'bootstrap-datepicker-rails'
gem 'jasny-bootstrap-rails'
gem 'carmen-rails', git: 'git@github.com:Studiosity/carmen-rails.git'

# end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
