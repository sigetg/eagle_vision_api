class CreateActivityOfferings < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_offerings do |t|
      t.string :typeKey
      t.string :stateKey
      t.string :name
      t.jsonb :descr
      t.date :effectiveDate
      t.date :expirationDate
      t.string :formatOfferingId
      t.string :formatOfferingName
      t.string :activityId
      t.references :term, null: false, foreign_key: true
      t.string :termCode
      t.string :activityCode
      t.string :scheduleIds, array: true, default: []
      t.boolean :isHonorsOffering
      t.jsonb :instructors
      t.float :weeklyInclassContactHours
      t.float :weeklyOutofClassHours
      t.float :weeklyTotalContactHours
      t.integer :maximumEnrollment
      t.integer :minimumEnrollment
      t.boolean :isEvaluated
      t.string :activityOfferingUrl
      t.references :course_offering, null: false, foreign_key: true
      t.string :courseOfferingTitle
      t.string :courseOfferingCode
      t.string :unitsDeploymentOrgIds, array: true, default: []
      t.string :requisiteIds, array: true, default: []
      t.string :coRequisiteIds, array: true, default: []
      t.string :restrictionIds, array: true, default: []
      t.jsonb :meta

      t.timestamps
    end
  end
end
