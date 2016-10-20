module Settings
  class Engine < ::Rails::Engine
    isolate_namespace Settings

    initializer :settings do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '../../app/admin']
    end

    initializer 'settings', before: :load_config_initializers do |_app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        Rails.application.config.paths['db/migrate'] << expanded_path
      end
    end

    initializer 'settings', after: :load_config_initializers do |_app|
      Settings.load_files.each do |file|
        require_relative File.join('../..', file)
      end
    end
  end
end
