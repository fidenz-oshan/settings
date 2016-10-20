module Settings
  class Engine < ::Rails::Engine
    isolate_namespace Settings

    initializer :settings do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '/../../app/admin']
    end

    initializer 'settings', before: :load_config_initializers do |_app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        Rails.application.config.paths['db/migrate'] << expanded_path
      end
    end
  end
end
