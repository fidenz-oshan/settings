class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.timestamps null: false
      t.belongs_to :settings_scopes, foreign_key: true
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
