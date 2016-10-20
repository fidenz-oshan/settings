module Settings
  class Scope < ActiveRecord::Base
    has_many :settings, dependent: :destroy, foreign_key: 'settings_scope_id'

    accepts_nested_attributes_for :settings, allow_destroy: true
  end
end
