class BlogTag < ActiveRecord::Base
	unloadable
	attr_accessible :tag

	belongs_to :blog_post
end