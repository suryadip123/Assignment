require 'test_helper'

class UserTest < ActiveSupport::TestCase
 	
 	def setup
 		@user = User.new(name: "ram", email: "rb.rana1993@gmail.com")
 	end

 	test "should be valid" do
 		assert @user.valid? #assert method, which in this case 
 							#succeeds if @user.valid? returns true and fails if it returns false.		
 	end

 	test "name should be present" do
 		@user.name = "     "
 		assert_not @user.valid? #assert_not that resulting User object is not valid.
 	end

end
