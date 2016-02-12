require 'test_helper'

class CalculatorControllerTest < ActionController::TestCase
  test "should get electrical" do
    get :electrical
    assert_response :success
  end

  test "should get security" do
    get :security
    assert_response :success
  end

end
