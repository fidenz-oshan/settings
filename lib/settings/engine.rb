module Settings
  class Engine < ::Rails::Engine
    initializer :append_migrations, before: :load_config_initializers do |_app|
      config.paths['db/migrate'].expanded.each do |expanded_path|
        Rails.application.config.paths['db/migrate'] << expanded_path
      end
    end
  end
end
