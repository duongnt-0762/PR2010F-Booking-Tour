require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PR2010FBookingTour
  class Application < Rails::Application
    config.load_defaults 6.1
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :vi
    config.active_storage.replace_on_assign_to_many = false
  end
end
