class Member < ApplicationRecord
  has_and_belongs_to_many :committees
  has_many :form_responses
  has_many :notifications
end
