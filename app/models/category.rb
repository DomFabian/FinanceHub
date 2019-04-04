class Category < ApplicationRecord
  has_many :subcategories
  belongs_to :budget
end
