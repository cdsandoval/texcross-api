class CreateIndividualCuttings < ActiveRecord::Migration[6.0]
  def change
    create_table :individual_cuttings do |t|
      t.date :date
      t.integer :quantity
      t.integer :order
      t.references :cutting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
