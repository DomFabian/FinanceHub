class Budget < ApplicationRecord
  has_many :categories
  has_many :subcategories, through: :categories
  belongs_to :fiscal_year
end
