class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Tạo blog thành công"
      redirect_to post_url(@post)
    else
      flash[:alert] = "Tạo blog thất bại"
      render :new
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
    if @post.save
      redirect_to post_url(@post)
    else
      render :edit
    end
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :body) 
  end
end
