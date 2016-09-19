require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdminPortal
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # CSS
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "bootstrap")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "fontawesome")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "themify-icons")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "animate")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "perfect-scrollbar")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "switchery")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "themes")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "DataTables")
    config.assets.paths << Rails.root.join('vendor', "assets", "stylesheets", "bootstrap-datepicker")
    # javascript
    config.assets.paths << Rails.root.join('vendor', "assets", "javascripts","bootstrap")
    config.assets.paths << Rails.root.join('vendor', "assets", "javascripts", "perfect-scrollbar")
    config.assets.paths << Rails.root.join('vendor', "assets", "javascripts", "switchery")
    config.assets.paths << Rails.root.join('vendor', "assets", "javascripts", "jquery-validation")
    # fonts
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # other
    config.assets.paths << Rails.root.join("app", "assets")
  end
end
