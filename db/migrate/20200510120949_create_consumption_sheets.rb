class CreateConsumptionSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :consumption_sheets do |t|
      t.string :name
      t.date :date
      t.string :url

      t.timestamps
    end
  end
end
