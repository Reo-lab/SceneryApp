require "test_helper"

class ImageTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_types_index_url
    assert_response :success
  end

  test "should get show" do
    get image_types_show_url
    assert_response :success
  end

  test "should get new" do
    get image_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get image_types_edit_url
    assert_response :success
  end
end
