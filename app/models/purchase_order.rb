class PurchaseOrder < ApplicationRecord
  belongs_to :commercial
  belongs_to :consumption_sheet
  belongs_to :data_sheet
  belongs_to :purchase_order_sheet
end
