module Settings
  class Engine < ::Rails::Engine
    initializer 'main_app' do
      ActiveAdmin.application.load_paths += Dir[File.dirname(__FILE__) + '../../app/admin']
    end
  end
end
