require 'rails'
require 'ember/auth/module/url_authenticatable/source'
require 'ember/auth/module/url_authenticatable/rails/version'
require 'ember/auth/module/url_authenticatable/rails/engine'

module Ember
  module Auth
    module Module
      module UrlAuthenticatable
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.url-authenticatable.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::UrlAuthenticatable::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
