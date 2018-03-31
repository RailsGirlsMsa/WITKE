class PostsController < ApplicationController
	
before_action :find_post, only: [:show, :edit, :update, :destroy]

	def blog
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
          redirect_to @post, notice: “The post is saved.”
     else 
          render ‘new’
     end 
	end

	def edit
	end

	def update
		if @post.update(post_params)
          redirect_to @post, notice: “Post is successfully updated!”
     else
          render ‘edit’
     end
	end

	def destroy
		@post.destroy
     redirect_to root_path, notice: “Post deleted!”
	end

private

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
		@post = Post.find(params[:id])
		
	end

end