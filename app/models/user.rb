class User < ActiveRecord::Base

	has_many :posts, dependent: :destroy
	has_secure_password
	validates :email, presence: true, 
					  length: {minimum: 2},
					  uniqueness: true,
					  format: {with: /@/, message: "You can't fool me - that's not a valid email."}
	validates :password, presence: true,
						 length: {minimum: 6}

end