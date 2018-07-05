class PostsController < ApplicationController

  before_action :authenticate_admin!, :except => [:show, :index]

  def index
    render layout: "application"
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def search
    @postsearches = Post.search(params.fetch(:q, "*"))
  end

  private
    def post_params
      params.require(:post).permit(:title, :text, :username, :image)
    end
end
