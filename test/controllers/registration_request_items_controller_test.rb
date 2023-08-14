require "test_helper"

class RegistrationRequestItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_request_item = registration_request_items(:one)
  end

  test "should get index" do
    get registration_request_items_url, as: :json
    assert_response :success
  end

  test "should create registration_request_item" do
    assert_difference("RegistrationRequestItem.count") do
      post registration_request_items_url, params: { registration_request_item: { courseWaitlistEntryId: @registration_request_item.courseWaitlistEntryId, descr: @registration_request_item.descr, effectiveDate: @registration_request_item.effectiveDate, existingActivityOfferingId: @registration_request_item.existingActivityOfferingId, existingRegistrationId: @registration_request_item.existingRegistrationId, expirationDate: @registration_request_item.expirationDate, lastAttendanceDate: @registration_request_item.lastAttendanceDate, meta: @registration_request_item.meta, name: @registration_request_item.name, notificationDate: @registration_request_item.notificationDate, preferredActivityOfferingIds: @registration_request_item.preferredActivityOfferingIds, preferredCredits: @registration_request_item.preferredCredits, preferredFormatOfferingIds: @registration_request_item.preferredFormatOfferingIds, preferredGradingOptionIds: @registration_request_item.preferredGradingOptionIds, preferredRegistrationGroupIds: @registration_request_item.preferredRegistrationGroupIds, processResults: @registration_request_item.processResults, processingPriority: @registration_request_item.processingPriority, registration_request_id: @registration_request_item.registration_request_id, requestedEffectiveDate: @registration_request_item.requestedEffectiveDate, resultingRegistrationId: @registration_request_item.resultingRegistrationId, stateKey: @registration_request_item.stateKey, typeKey: @registration_request_item.typeKey, user_id: @registration_request_item.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show registration_request_item" do
    get registration_request_item_url(@registration_request_item), as: :json
    assert_response :success
  end

  test "should update registration_request_item" do
    patch registration_request_item_url(@registration_request_item), params: { registration_request_item: { courseWaitlistEntryId: @registration_request_item.courseWaitlistEntryId, descr: @registration_request_item.descr, effectiveDate: @registration_request_item.effectiveDate, existingActivityOfferingId: @registration_request_item.existingActivityOfferingId, existingRegistrationId: @registration_request_item.existingRegistrationId, expirationDate: @registration_request_item.expirationDate, lastAttendanceDate: @registration_request_item.lastAttendanceDate, meta: @registration_request_item.meta, name: @registration_request_item.name, notificationDate: @registration_request_item.notificationDate, preferredActivityOfferingIds: @registration_request_item.preferredActivityOfferingIds, preferredCredits: @registration_request_item.preferredCredits, preferredFormatOfferingIds: @registration_request_item.preferredFormatOfferingIds, preferredGradingOptionIds: @registration_request_item.preferredGradingOptionIds, preferredRegistrationGroupIds: @registration_request_item.preferredRegistrationGroupIds, processResults: @registration_request_item.processResults, processingPriority: @registration_request_item.processingPriority, registration_request_id: @registration_request_item.registration_request_id, requestedEffectiveDate: @registration_request_item.requestedEffectiveDate, resultingRegistrationId: @registration_request_item.resultingRegistrationId, stateKey: @registration_request_item.stateKey, typeKey: @registration_request_item.typeKey, user_id: @registration_request_item.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy registration_request_item" do
    assert_difference("RegistrationRequestItem.count", -1) do
      delete registration_request_item_url(@registration_request_item), as: :json
    end

    assert_response :no_content
  end
end
