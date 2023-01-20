require "test_helper"

class Admin::ResControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_res_index_url
    assert_response :success
  end
end
