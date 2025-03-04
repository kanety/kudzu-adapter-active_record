require_relative 'boot'

require 'action_controller/railtie'
require 'active_record/railtie'

Bundler.require(*Rails.groups)
require "active_record/base"
require "kudzu/adapter/active_record"

module Dummy
  class Application < Rails::Application
    config.load_defaults Rails::VERSION::STRING.to_f if config.respond_to?(:load_defaults)

    unless (database = ENV['DATABASE'].to_s).empty?
      config.paths["config/database"] = "config/database_#{database}.yml"
      ENV['SCHEMA'] = Rails.root.join("db/schema_#{database}.rb").to_s
    end
  end
end
