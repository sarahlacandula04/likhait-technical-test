class Category < ApplicationRecord
  has_many :expenses, dependent: :destroy
end
# Category model for expense categorization
