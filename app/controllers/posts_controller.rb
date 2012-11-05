class PostsController < ApplicationController
  respond_to :html, :js

  def index
    @posts = Post.all
    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post    
  end

  def new
    @post = Post.new
    respond_with @post
  end

  def edit
    @post = Post.find(params[:id])
    respond_with @post
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = 'Post was successfully created.'
    end
    respond_with @post do |format|
      format.js { redirect_to posts_path }
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = 'Post was successfully updated.' 
    end
    respond_with @post do |format|
      format.js { redirect_to posts_path }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    respond_with @post
  end
  
end
