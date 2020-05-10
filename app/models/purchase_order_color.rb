class PurchaseOrderColor < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :colors
end
