# frozen_string_literal: true

source "https://rubygems.org"

# --- Core framework + runtime -------------------------------------------------
gem "rails", "~> 8.1"
gem "puma", ">= 7.2"
gem "sqlite3", ">= 2.9"
gem "tzinfo-data", platforms: %i[ windows jruby ]


# --- Assets, frontend, and API responses -------------------------------------
gem "propshaft"
gem "jbuilder"
gem "vite_rails", "~> 3.0"
gem "inertia_rails", "~> 3.17"
gem "js-routes"

# --- Authentication / security -----------------------------------------------
gem "authentication-zero"
gem "bcrypt", "~> 3.1"

# --- Background jobs, caching, realtime (Rails Solid stack) -------------------
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# --- Performance / boot speed -------------------------------------------------
gem "bootsnap", require: false

# --- Deployment / production ops ----------------------------------------------
gem "thruster", require: false
gem "kamal", require: false, group: [:development, :deploy]

# Optional:
# gem "image_processing", "~> 1.2"


group :development, :test do
  # --- Development tools (DX) -------------------------------------------------
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # --- Code quality / security auditing --------------------------------------
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false

  # --- Testing ----------------------------------------------------------------
  gem "rspec-rails", "~> 8.0"
  gem "factory_bot_rails"
end

group :development do
  # --- Development-only helpers ----------------------------------------------
  gem "web-console"
  gem "letter_opener"
end

group :test do
  # --- System / browser testing ----------------------------------------------
  gem "capybara"
  gem "capybara-lockstep"
  gem "selenium-webdriver"
end
