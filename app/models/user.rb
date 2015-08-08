class User < ActiveRecord::Base
	before_save { self.email = email.downcase } #passes a block to the before_save callback and sets the user’s email address to a lower-case
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    validates :password, presence: true, length: {minimum: 6}

    has_secure_password # secure password machinery will be 
    					# => implemented using a single Rails method called has_secure_password
end
