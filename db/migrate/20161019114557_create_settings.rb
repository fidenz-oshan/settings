class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.timestamps null: false
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
