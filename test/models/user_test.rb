require 'test_helper'

class UserTest < ActiveSupport::TestCase
 	
 	def setup
 		@user = User.new(name: "ram", email: "rb.rana1993@gmail.com")
 	end

 	test "should be valid" do
 		assert @user.valid?		
 	end
end
