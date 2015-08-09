require 'test_helper'

class NewspostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@newspost = newsposts(:orange)
  end

  test "should be pass" do
  	assert @newspost.valid?
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Newspost.count' do
      post :create, newspost: { content: "Lorem ipsum" }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Newspost.count' do
      delete :destroy, id: @newspost
    end
    assert_redirected_to login_url
  end
end
