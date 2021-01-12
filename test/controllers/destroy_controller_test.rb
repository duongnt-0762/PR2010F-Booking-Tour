require "test_helper"

class DestroyControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get destroy_admin_url
    assert_response :success
  end
end
