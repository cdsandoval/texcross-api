class Commercial < ApplicationRecord
  belongs_to :client
  belongs_to :invoice
end
