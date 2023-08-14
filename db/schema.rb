# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_14_220049) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activity_offerings", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.string "name"
    t.jsonb "descr"
    t.date "effectiveDate"
    t.date "expirationDate"
    t.string "formatOfferingId"
    t.string "formatOfferingName"
    t.string "activityId"
    t.bigint "term_id", null: false
    t.string "termCode"
    t.string "activityCode"
    t.string "scheduleIds", default: [], array: true
    t.boolean "isHonorsOffering"
    t.jsonb "instructors"
    t.float "weeklyInclassContactHours"
    t.float "weeklyOutofClassHours"
    t.float "weeklyTotalContactHours"
    t.integer "maximumEnrollment"
    t.integer "minimumEnrollment"
    t.boolean "isEvaluated"
    t.string "activityOfferingUrl"
    t.bigint "course_offering_id", null: false
    t.string "courseOfferingTitle"
    t.string "courseOfferingCode"
    t.string "unitsDeploymentOrgIds", default: [], array: true
    t.string "requisiteIds", default: [], array: true
    t.string "coRequisiteIds", default: [], array: true
    t.string "restrictionIds", default: [], array: true
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_offering_id"], name: "index_activity_offerings_on_course_offering_id"
    t.index ["term_id"], name: "index_activity_offerings_on_term_id"
  end

  create_table "course_offerings", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.date "effectiveDate"
    t.date "expirationDate"
    t.string "name"
    t.jsonb "descr"
    t.string "courseId"
    t.bigint "term_id", null: false
    t.string "courseCode"
    t.string "courseOfferingCode"
    t.string "subjectAreaId"
    t.string "courseNumberSuffix"
    t.string "courseOfferingTitle"
    t.boolean "isHonorsOffering"
    t.integer "maximumEnrollment"
    t.integer "minimumEnrollment"
    t.string "gradingOptionId"
    t.string "studentRegistrationGradingOptionIds", default: [], array: true
    t.string "creditOptionId"
    t.jsonb "instructors"
    t.string "unitsDeploymentOrgIds", default: [], array: true
    t.string "requisiteIds", default: [], array: true
    t.string "coRequisiteIds", default: [], array: true
    t.string "restrictionIds", default: [], array: true
    t.string "campusLocations", default: [], array: true
    t.boolean "isEvaluated"
    t.string "courseOfferingUrl"
    t.string "gradeRosterDefinitionId"
    t.string "gradingOptionIds", default: [], array: true
    t.string "creditOptionIds", default: [], array: true
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_course_offerings_on_term_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.string "name"
    t.jsonb "descr"
    t.string "pictureDocumentId"
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registration_request_items", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.date "effectiveDate"
    t.date "expirationDate"
    t.string "name"
    t.jsonb "descr"
    t.bigint "registration_request_id", null: false
    t.bigint "person_id", null: false
    t.date "requestedEffectiveDate"
    t.string "existingRegistrationId"
    t.string "existingActivityOfferingId"
    t.string "preferredActivityOfferingIds"
    t.string "preferredFormatOfferingIds"
    t.string "preferredRegistrationGroupIds"
    t.float "preferredCredits"
    t.string "preferredGradingOptionIds"
    t.jsonb "processResults"
    t.string "resultingRegistrationId"
    t.string "courseWaitlistEntryId"
    t.integer "processingPriority"
    t.date "lastAttendanceDate"
    t.date "notificationDate"
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_registration_request_items_on_person_id"
    t.index ["registration_request_id"], name: "index_registration_request_items_on_registration_request_id"
  end

  create_table "registration_requests", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.date "effectiveDate"
    t.date "expirationDate"
    t.string "name"
    t.jsonb "descr"
    t.bigint "person_id", null: false
    t.bigint "term_id", null: false
    t.date "submittedDate"
    t.jsonb "processResults"
    t.string "itemStudentIds"
    t.string "itemStudentPopulationId"
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_registration_requests_on_person_id"
    t.index ["term_id"], name: "index_registration_requests_on_term_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "typeKey"
    t.string "stateKey"
    t.string "name"
    t.jsonb "descr"
    t.string "code"
    t.date "startDate"
    t.date "endDate"
    t.jsonb "meta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activity_offerings", "course_offerings"
  add_foreign_key "activity_offerings", "terms"
  add_foreign_key "course_offerings", "terms"
  add_foreign_key "registration_request_items", "people"
  add_foreign_key "registration_request_items", "registration_requests"
  add_foreign_key "registration_requests", "people"
  add_foreign_key "registration_requests", "terms"
end
