class AddActivityOfferingToRegistrationRequestItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :registration_request_items, :activity_offering, null: false, foreign_key: true
  end
end
