class PostController < ApplicationController

  def post_params
    params.require(:post).permit(:content, :about, :date, :allday)
  end

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
    @post = Post.new(params.require(:post).permit(:content, :about, :date, :allday))
    if @post.save
      redirect_to :posts
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update!(params.require(:post).permit(:content, :about, :date, :allday))
      flash[:notice] = "スケジュールが更新されました。"
      redirect_to :posts
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to :posts
  end

  
end
