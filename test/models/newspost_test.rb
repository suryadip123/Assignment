require 'test_helper'

class NewspostTest < ActiveSupport::TestCase
 	
 	def setup
 		@user = users(:ram)
 		@newspost = @user.newsposts.build(content: "Lorem ipsum")
 	end

 	test "should be valid" do 
 		assert @newspost.valid?
 	end

 	test "user id should be presence" do
 		@newspost.user_id = nil
 		assert_not @newspost.valid?
 	end

 	test "content should be presence" do
 		@newspost.content = "      "
 		assert_not @newspost.valid?
 	end

 	test "order should be most recent first" do
    assert_equal newsposts(:most_recent), Newspost.first
  end


end
