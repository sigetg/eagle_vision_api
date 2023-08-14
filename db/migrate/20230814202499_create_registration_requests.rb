class CreateRegistrationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_requests do |t|
      t.string :typeKey
      t.string :stateKey
      t.date :effectiveDate
      t.date :expirationDate
      t.string :name
      t.jsonb :descr
      t.references :person, null: false, foreign_key: true
      t.references :term, null: false, foreign_key: true
      t.date :submittedDate
      t.jsonb :processResults
      t.string :itemStudentIds
      t.string :itemStudentPopulationId
      t.jsonb :meta

      t.timestamps
    end
  end
end
