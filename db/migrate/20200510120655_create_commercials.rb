class CreateCommercials < ActiveRecord::Migration[6.0]
  def change
    create_table :commercials do |t|
      t.date :start_date
      t.date :delivery_date
      t.string :status
      t.references :client, null: false, foreign_key: true
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
