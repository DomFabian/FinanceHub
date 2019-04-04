class FormResponse < ApplicationRecord
  serialize :answers, Array
  
  has_and_belongs_to_many :subcategories
  belongs_to :form
  belongs_to :member
  belongs_to :batch
  
  # files stored in AWS S3 bucket
  has_many_attached :pdfs
  has_many_attached :receipts
end
