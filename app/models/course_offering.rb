class CourseOffering < ApplicationRecord
  belongs_to :term
  has_many :activity_offerings
end
