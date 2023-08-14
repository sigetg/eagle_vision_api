class ActivityOffering < ApplicationRecord
  belongs_to :term
  belongs_to :course_offering
end
