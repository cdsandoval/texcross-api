class CreatePurchaseOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_orders do |t|
      t.string :description
      t.references :commercial, null: false, foreign_key: true
      t.references :consumption_sheet, null: false, foreign_key: true
      t.references :data_sheet, null: false, foreign_key: true
      t.references :purchase_order_sheet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
