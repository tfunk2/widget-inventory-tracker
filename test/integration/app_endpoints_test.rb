require 'test_helper'

class AppEndpointsTest < ActionDispatch::IntegrationTest
  test "Should be able to create a user" do
    post "/users", params: {
      user: {
        "email": "fake@email.com"
      }
    }
    assert_response :success
  end
end
