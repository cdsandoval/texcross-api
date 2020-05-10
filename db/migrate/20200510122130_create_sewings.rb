class CreateSewings < ActiveRecord::Migration[6.0]
  def change
    create_table :sewings do |t|
      t.date :start_date
      t.integer :start_quantity
      t.date :delivery_date
      t.integer :delivery_quantity
      t.references :purchase_order_color, null: false, foreign_key: true
      t.references :referral_guide, null: false, foreign_key: true

      t.timestamps
    end
  end
end
