require 'test_helper'

class DiscographiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get discographies_index_url
    assert_response :success
  end

  test "should get show" do
    get discographies_show_url
    assert_response :success
  end

  test "should get new" do
    get discographies_new_url
    assert_response :success
  end

end
