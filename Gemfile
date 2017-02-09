source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'             # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sqlite3'                       # Use sqlite3 as the database for Active Record
gem 'puma', '~> 3.0'                # Use Puma as the app server
gem 'sass-rails', '~> 5.0'          # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'          # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2'        # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails'                  # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5'            # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5'            # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

group :development, :test do
  gem 'byebug', platform: :mri      # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '>= 3.3.0'     # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
