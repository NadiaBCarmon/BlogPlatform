class Tag < ActiveRecord::Base
	# has_many :tagandposts
	has_many :posts, through: :tagsandposts
end