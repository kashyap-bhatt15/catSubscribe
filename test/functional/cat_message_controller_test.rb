require 'test_helper'

class CatMessageControllerTest < ActionController::TestCase
  test "should get sendtext" do
    get :sendtext
    assert_response :success
  end

end
