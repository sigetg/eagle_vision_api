class CreateCourseOfferings < ActiveRecord::Migration[7.0]
  def change
    create_table :course_offerings do |t|
      t.string :typeKey
      t.string :stateKey
      t.date :effectiveDate
      t.date :expirationDate
      t.string :name
      t.jsonb :descr
      t.string :courseId
      t.references :term, null: false, foreign_key: true
      t.string :courseCode
      t.string :courseOfferingCode
      t.string :subjectAreaId
      t.string :courseNumberSuffix
      t.string :courseOfferingTitle
      t.boolean :isHonorsOffering
      t.integer :maximumEnrollment
      t.integer :minimumEnrollment
      t.string :gradingOptionId
      t.string :studentRegistrationGradingOptionIds, array: true, default: []
      t.string :creditOptionId
      t.jsonb :instructors
      t.string :unitsDeploymentOrgIds, array: true, default: []
      t.string :requisiteIds, array: true, default: []
      t.string :coRequisiteIds, array: true, default: []
      t.string :restrictionIds, array: true, default: []
      t.string :campusLocations, array: true, default: []
      t.boolean :isEvaluated
      t.string :courseOfferingUrl
      t.string :gradeRosterDefinitionId
      t.string :gradingOptionIds, array: true, default: []
      t.string :creditOptionIds, array: true, default: []
      t.jsonb :meta

      t.timestamps
    end
  end
end
