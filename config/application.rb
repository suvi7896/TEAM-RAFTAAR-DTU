require_relative 'boot'

require 'rails/all'

require 'socket'
require 'ipaddr'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PlayfulMinds
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.web_console.whitelisted_ips = Socket.ip_address_list.reduce([]) do |res, addrinfo|
      addrinfo.ipv4? ? res << IPAddr.new(addrinfo.ip_address).mask(24) : res
  end
    config.web_console.whitelisted_ips = ' 59.177.137.239'
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
  end
end
