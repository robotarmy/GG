require File.expand_path('../boot', __FILE__)

require 'rails/all'

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module GG
  class Application < Rails::Application
    #config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable IdentityMap for Active Record, to disable set to false or remove the line below.
    config.active_record.identity_map = true

    # Enable the asset pipeline
    config.assets.enabled = true
  end
end
