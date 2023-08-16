class RemoveNullFalseFromPerson < ActiveRecord::Migration[7.0]
  def change
    change_column_null :registration_requests, :person_id, true
  end
end
