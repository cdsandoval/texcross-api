class CreateLooms < ActiveRecord::Migration[6.0]
  def change
    create_table :looms do |t|
      t.date :start_date
      t.date :delivery_date
      t.integer :status
      t.references :purchase_order_color, null: false, foreign_key: true

      t.timestamps
    end
  end
end
