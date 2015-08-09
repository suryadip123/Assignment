require 'test_helper'

class NewsTest < ActiveSupport::TestCase
		def setup
			@user = users(:ram)
			@news = News.new(content: "sample content", user_id: @user.id)
		end

		test "should be valid" do
			assert @news.valid?
		end

		test "user id should be present" do
			@news.user_id = nil
			assert_not @news.valid?
		end

		test "content should be present" do
			@news.content = "   "
			assert_not @news.valid?
		end

end 
