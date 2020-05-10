class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :roles
end
