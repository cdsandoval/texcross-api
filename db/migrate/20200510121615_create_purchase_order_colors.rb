class CreatePurchaseOrderColors < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_order_colors do |t|
      t.integer :quantity
      t.string :status
      t.references :purchase_order, null: false, foreign_key: true
      t.references :colors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
