require "test_helper"

class TermsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @term = terms(:one)
  end

  test "should get index" do
    get terms_url, as: :json
    assert_response :success
  end

  test "should create term" do
    assert_difference("Term.count") do
      post terms_url, params: { term: { code: @term.code, descr: @term.descr, endDate: @term.endDate, meta: @term.meta, name: @term.name, startDate: @term.startDate, stateKey: @term.stateKey, typeKey: @term.typeKey } }, as: :json
    end

    assert_response :created
  end

  test "should show term" do
    get term_url(@term), as: :json
    assert_response :success
  end

  test "should update term" do
    patch term_url(@term), params: { term: { code: @term.code, descr: @term.descr, endDate: @term.endDate, meta: @term.meta, name: @term.name, startDate: @term.startDate, stateKey: @term.stateKey, typeKey: @term.typeKey } }, as: :json
    assert_response :success
  end

  test "should destroy term" do
    assert_difference("Term.count", -1) do
      delete term_url(@term), as: :json
    end

    assert_response :no_content
  end
end
