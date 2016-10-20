module Settings
  class Scope < ActiveRecord::Base
    has_many :settings, dependent: :destroy, foreign_key: 'settings_scope_id'
  end
end
