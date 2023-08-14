class RegistrationRequestItem < ApplicationRecord
  belongs_to :registration_request
  belongs_to :person
end
