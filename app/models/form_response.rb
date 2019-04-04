class FormResponse < ApplicationRecord
  has_and_belongs_to_many :subcategories
  belongs_to :form
  belongs_to :member
  belongs_to :batch
end
