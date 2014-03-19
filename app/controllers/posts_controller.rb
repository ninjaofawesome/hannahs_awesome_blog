class PostsController < ApplicationController

	def index 
		@posts = Post.all
	end

	def new
	end

	def create
		 @post = Post.new(params[:posts])
		 @post.save
		 redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
	end

	def update
	end

	def delete
	end
end





