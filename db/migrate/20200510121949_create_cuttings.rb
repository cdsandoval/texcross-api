class CreateCuttings < ActiveRecord::Migration[6.0]
  def change
    create_table :cuttings do |t|
      t.integer :total
      t.references :referral_guide, null: false, foreign_key: true
      t.references :purchase_order_colors, null: false, foreign_key: true

      t.timestamps
    end
  end
end
