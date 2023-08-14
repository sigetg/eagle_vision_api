class RegistrationRequest < ApplicationRecord
  belongs_to :person
  belongs_to :term
  has_many :registration_request_items, dependent: :destroy
end
