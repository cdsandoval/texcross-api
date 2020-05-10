class Cutting < ApplicationRecord
  belongs_to :referral_guide
  belongs_to :purchase_order_colors
end
