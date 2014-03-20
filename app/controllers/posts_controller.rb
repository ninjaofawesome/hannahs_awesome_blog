class PostsController < ApplicationController

	def index 
		@posts = Post.all
	end

	def new
	end

	def create
		 @post = Post.new(params[:posts])
		if @post.save
			 redirect_to @post
		else
			render 'new'
		end

	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(params[:posts].permit(:title, :text))
			redirect_to @post
		else
			render 'edit'
		end

	end

	def delete
	end
end





