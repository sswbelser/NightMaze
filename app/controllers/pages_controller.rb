class PagesController < ApplicationController
	def index
	end

	def show
		@post = Post.new
		@posts = Post.all
	end

end
