class CreateDataSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :data_sheets do |t|
      t.string :name
      t.date :date
      t.string :url

      t.timestamps
    end
  end
end
