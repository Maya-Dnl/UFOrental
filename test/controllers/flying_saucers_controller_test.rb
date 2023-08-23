require "test_helper"

class FlyingSaucersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get flying_saucers_new_url
    assert_response :success
  end

  test "should get create" do
    get flying_saucers_create_url
    assert_response :success
  end

  test "should get index" do
    get flying_saucers_index_url
    assert_response :success
  end

  test "should get show" do
    get flying_saucers_show_url
    assert_response :success
  end

  test "should get edit" do
    get flying_saucers_edit_url
    assert_response :success
  end

  test "should get update" do
    get flying_saucers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get flying_saucers_destroy_url
    assert_response :success
  end
end
