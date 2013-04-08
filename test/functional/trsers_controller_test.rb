require 'test_helper'

class TrsersControllerTest < ActionController::TestCase
  test "should get open" do
    get :open
    assert_response :success
  end

  test "should get debit" do
    get :debit
    assert_response :success
  end

  test "should get credit" do
    get :credit
    assert_response :success
  end

end
