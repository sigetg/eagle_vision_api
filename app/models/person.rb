class Person < ApplicationRecord
  has_many :registration_requests
  has_many :registration_request_items
end
