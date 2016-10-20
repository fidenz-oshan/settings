module Settings
  class Setting < ActiveRecord::Base
    belongs_to :scope, inverse_of: :settings
  end
end
