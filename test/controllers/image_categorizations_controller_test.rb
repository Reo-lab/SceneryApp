require "test_helper"

class ImageCategorizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_categorizations_index_url
    assert_response :success
  end

  test "should get show" do
    get image_categorizations_show_url
    assert_response :success
  end

  test "should get new" do
    get image_categorizations_new_url
    assert_response :success
  end

  test "should get edit" do
    get image_categorizations_edit_url
    assert_response :success
  end
end
