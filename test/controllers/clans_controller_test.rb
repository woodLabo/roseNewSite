require 'test_helper'

class ClansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clans_index_url
    assert_response :success
  end

  test "should get show" do
    get clans_show_url
    assert_response :success
  end

  test "should get new" do
    get clans_new_url
    assert_response :success
  end

  test "should get edit" do
    get clans_edit_url
    assert_response :success
  end

end
