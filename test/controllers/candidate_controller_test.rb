require "test_helper"

class CandidateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get candidate_index_url
    assert_response :success
  end

  test "should get show" do
    get candidate_show_url
    assert_response :success
  end

  test "should get new" do
    get candidate_new_url
    assert_response :success
  end

  test "should get create" do
    get candidate_create_url
    assert_response :success
  end

  test "should get edit" do
    get candidate_edit_url
    assert_response :success
  end

  test "should get update" do
    get candidate_update_url
    assert_response :success
  end

  test "should get destroy" do
    get candidate_destroy_url
    assert_response :success
  end
end
