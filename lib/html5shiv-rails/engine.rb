module Html5shivRails
  class Engine < ::Rails::Engine
    # Enabling assets precompiling under rails 3.1
    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( html5shiv.js html5shiv-printshiv.js )
      end
    end
  end
end
