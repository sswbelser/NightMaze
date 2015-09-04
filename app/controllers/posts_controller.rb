class PostsController < ApplicationController

	# add new post to database
	def create
		# redirect user if already logged in
		if current_user
			post = Post.new(post_params)
			post.user_id = current_user.id
			if post.save
				flash[:notice] = "Successfully saved post."
				redirect_to about_path
			else
				flash[:error] = post.errors.full_messages.join(', ')
				redirect_to about_path
			end
		else
			flash[:error] = "Need to login to create post."
			redirect_to root_path
		end
	end

	def destroy
		if post = Post.find(params[:id])
			if current_user
				flash[:notice] = "Successfully deleted post!"
				post.delete
				redirect_to about_path
			else
				flash[:error] = "You need to login in to delete post."
				redirect_to root_path
			end
		else
			flash[:error] = post.errors.full_messages.join(', ')
			redirect_to about_path
		end
	end

	private
		def post_params
			params.require(:post).permit(:text, :user_id)
		end
end