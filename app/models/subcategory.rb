class Subcategory < ApplicationRecord
  has_and_belongs_to_many :form_responses
  belongs_to :category
end
