require 'test_helper'

class FlatControllerTest < ActionController::TestCase
  test "should get phone" do
    get :phone
    assert_response :success
  end

  test "should get sqfeet" do
    get :sqfeet
    assert_response :success
  end

end
