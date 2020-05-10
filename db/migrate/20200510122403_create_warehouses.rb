class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.date :received_date
      t.integer :quantity
      t.integer :box_number
      t.string :image_url
      t.references :purchase_order_color, null: false, foreign_key: true

      t.timestamps
    end
  end
end
