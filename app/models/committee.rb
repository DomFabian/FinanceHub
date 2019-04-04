class Committee < ApplicationRecord
  has_and_belongs_to_many :members
  has_many :budgets
end
