class User < ActiveRecord::Base
	# has_one :profile
	# No method error when has_one is commented out.
	has_many :posts
end
