class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
  @post = Post.create!(post_params)
  redirect_to post_path(@post), notice: "You successuflly created new post!"
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
@post.update(post_params)
redirect_to post_path(@post), notice: "You successuflly edited your post!"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "You successfully deleted your post!"

  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :author)
  end
end
