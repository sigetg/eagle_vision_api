require "test_helper"

class RegistrationRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration_request = registration_requests(:one)
  end

  test "should get index" do
    get registration_requests_url, as: :json
    assert_response :success
  end

  test "should create registration_request" do
    assert_difference("RegistrationRequest.count") do
      post registration_requests_url, params: { registration_request: { descr: @registration_request.descr, effectiveDate: @registration_request.effectiveDate, expirationDate: @registration_request.expirationDate, itemStudentIds: @registration_request.itemStudentIds, itemStudentPopulationId: @registration_request.itemStudentPopulationId, meta: @registration_request.meta, name: @registration_request.name, processResults: @registration_request.processResults, stateKey: @registration_request.stateKey, submittedDate: @registration_request.submittedDate, term_id: @registration_request.term_id, typeKey: @registration_request.typeKey, user_id: @registration_request.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show registration_request" do
    get registration_request_url(@registration_request), as: :json
    assert_response :success
  end

  test "should update registration_request" do
    patch registration_request_url(@registration_request), params: { registration_request: { descr: @registration_request.descr, effectiveDate: @registration_request.effectiveDate, expirationDate: @registration_request.expirationDate, itemStudentIds: @registration_request.itemStudentIds, itemStudentPopulationId: @registration_request.itemStudentPopulationId, meta: @registration_request.meta, name: @registration_request.name, processResults: @registration_request.processResults, stateKey: @registration_request.stateKey, submittedDate: @registration_request.submittedDate, term_id: @registration_request.term_id, typeKey: @registration_request.typeKey, user_id: @registration_request.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy registration_request" do
    assert_difference("RegistrationRequest.count", -1) do
      delete registration_request_url(@registration_request), as: :json
    end

    assert_response :no_content
  end
end
