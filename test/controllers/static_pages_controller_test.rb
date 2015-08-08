require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get about page" do
  	get :about
  	assert_response :success
  end

end