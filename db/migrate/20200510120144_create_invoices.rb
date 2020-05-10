class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :url_with_prices
      t.string :url_without_prices

      t.timestamps
    end
  end
end
