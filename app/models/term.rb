class Term < ApplicationRecord
  has_many :registration_requests
  has_many :activity_offerings
  has_many :course_offerings
end
