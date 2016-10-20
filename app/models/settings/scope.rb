module Settings
  class Scope < ActiveRecord::Base
    has_many :settings, dependent: :destroy
  end
end
