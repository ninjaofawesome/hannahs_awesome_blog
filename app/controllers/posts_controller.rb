class PostsController < ApplicationController
	before_filter :authenticate_user!

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
		@posts = Post.all
		@post = Post.find(params[:id])
	end

	def edit
		@posts = Post.all
		@post = Post.find(params[:id])
	end

	def update
	
		@post = Post.find(params[:id])

		if @post.update_attributes(params[:post])
			@post.save
			redirect_to @post
		else
			render 'edit'
		end

	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/posts/:id'

	end
end









