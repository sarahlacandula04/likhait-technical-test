class Expense < ApplicationRecord
  belongs_to :category

  validates :description, presence: true, length: { minimum: 1, maximum: 255 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :date, presence: true
  validates :category_id, presence: true
  
  # BONUS-001: Prevent future date expense creation
  validates :date, comparison: { less_than_or_equal_to: -> { Date.today }, message: "cannot be in the future" }
end