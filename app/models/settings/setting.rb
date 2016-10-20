module Settings
  class Setting < ActiveRecord::Base
    belongs_to :scope, inverse_of: :settings

    validates :slug, uniqueness: true

    enum data_type: [:f, :int, :boolean, :email, :rich_file]
    enum input_type: [:input, :dropdown, :radio, :checkbox, :file, :image, :audio, :video]
  end
end
