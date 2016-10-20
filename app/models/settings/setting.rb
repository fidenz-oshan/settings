module Settings
  class Setting < ActiveRecord::Base
    belongs_to :scope, inverse_of: :settings, foreign_key: 'settings_scope_id'
  end
end
