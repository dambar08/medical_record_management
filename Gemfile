source "https://rubygems.org"

gem "rails", "~> 8.0.1" # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "propshaft" # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "sqlite3", ">= 2.1" # Use sqlite3 as the database for Active Record
gem "puma", ">= 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "jbuilder" # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "tzinfo-data", platforms: %i[ windows jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "solid_cache" # Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_queue"
gem "solid_cable"
gem "paper_trail", "~> 16.0"
gem "searchkick", "~> 5.5"
gem "rolify", "~> 6.0"
gem "rswag-api"
gem "rswag-ui"
gem "jsbundling-rails", "~> 1.3"
gem "cssbundling-rails", "~> 1.4"
gem "simple_form", "~> 5.3"
gem "annotate", "~> 2.6"
gem "pundit", "~> 2.5"
gem "pg", "~> 1.5"
gem "pagy", "~> 9.3"

gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "kamal", require: false # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "thruster", require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude" # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman", require: false # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "dotenv-rails", "~> 3.1"
  gem "rubocop-rails-omakase", require: false # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rswag-specs"
  gem "factory_bot_rails", "~> 6.4"
end

group :development do
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "hotwire-livereload", "~> 2.0"
  gem "letter_opener", "~> 1.10"
end

group :test do
  gem "capybara" # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "selenium-webdriver"
  gem "webmock", "~> 3.25"
  gem "vcr", "~> 6.3"
  gem "simplecov", require: false
  gem "simplecov_json_formatter", require: false
  gem "rspec-rails", "~> 7.1"
end
