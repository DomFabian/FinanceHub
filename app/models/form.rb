class Form < ApplicationRecord
  serialize :questions, Array
  
  has_many :form_responses
  
  # files stored in AWS S3 bucket
  has_one_attached :atc_form
  has_one_attached :cc_form
  has_one_attached :crf_form
  
  FORM_TYPES = ["ATC", "CC", "CRF"]
  
  validates_inclusion_of :type, in: FORM_TYPES
end
