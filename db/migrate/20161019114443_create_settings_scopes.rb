class CreateSettingsScopes < ActiveRecord::Migration[5.0]
  def change
    create_table :settings_scopes do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
