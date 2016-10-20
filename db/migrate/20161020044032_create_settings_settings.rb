class CreateSettingsSettings < ActiveRecord::Migration
  def change
    create_table :settings_settings do |t|
      t.timestamps null: false
      t.belongs_to :settings_scope, foreign_key: true
      t.integer :scope
      t.string :slug
      t.string :title
      t.string :value
      t.integer :data_type
      t.integer :input_type
      t.string :input_values
      t.integer :order_id
    end
  end
end
