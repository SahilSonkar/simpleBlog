require "test_helper"

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get SignupPages" do
    get sign_up_SignupPages_url
    assert_response :success
  end

  test "should get LoginPages" do
    get sign_up_LoginPages_url
    assert_response :success
  end
end
