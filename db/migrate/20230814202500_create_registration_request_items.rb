class CreateRegistrationRequestItems < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_request_items do |t|
      t.string :typeKey
      t.string :stateKey
      t.date :effectiveDate
      t.date :expirationDate
      t.string :name
      t.jsonb :descr
      t.references :registration_request, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.date :requestedEffectiveDate
      t.string :existingRegistrationId
      t.string :existingActivityOfferingId
      t.string :preferredActivityOfferingIds
      t.string :preferredFormatOfferingIds
      t.string :preferredRegistrationGroupIds
      t.float :preferredCredits
      t.string :preferredGradingOptionIds
      t.jsonb :processResults
      t.string :resultingRegistrationId
      t.string :courseWaitlistEntryId
      t.integer :processingPriority
      t.date :lastAttendanceDate
      t.date :notificationDate
      t.jsonb :meta

      t.timestamps
    end
  end
end
