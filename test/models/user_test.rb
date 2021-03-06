require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(name: "rb", email: "rb.rana1993@gmail.com", 
						password: "rana1993", password_confirmation: "rana1993")
	end

	test "shuld be valid" do
		assert @user.valid?
	end

	test "name should be resent" do
		@user.name = "         "
		assert_not @user.valid?
	end

	test "email should be present" do
    	@user.email = ''
    	assert_not @user.valid?
  	end

  	test "name should not be too long" do
	    @user.name = "a" * 51
	    assert_not @user.valid?
  	end

  	test "email should not be too long" do
	    @user.email = "a" * 244 + "@example.com"
	    assert_not @user.valid?
  	end


  	test "email validation should accept valid addresses" do
	    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
	                        first.last@foo.jp alice+bob@baz.cn]
	    valid_addresses.each do |valid_address|
	      @user.email = valid_address
	      assert @user.valid?, "#{valid_address.inspect} should be valid"
	    end
  	end

  	test "email addresses should be unique" do
	    duplicate_user = @user.dup
	    duplicate_user.email = @user.email.upcase
	    @user.save
	    assert_not duplicate_user.valid?
  	end

  	test "password should be present" do
  		@user.password = @user.password_confirmation = ' '*6
  		assert_not @user.valid?
  	end

  	test "password should have a minimum length" do
  		@user.password_confirmation = @user.password_confirmation = "a"*5
  		assert_not @user.valid?
  	end
  	
		
end
