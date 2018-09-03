require 'test_helper'

class ContectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contects_index_url
    assert_response :success
  end

end
