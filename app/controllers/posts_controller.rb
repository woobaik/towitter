class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Your post has been shared to the world!"
      redirect_to post_path(@post)
    else
      flash.new[:fail] = "Ooops, there was something wrong with your entry!"
      render :new
    end
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    if @post.update(post_params)
      flash[:success] = "Your post has been successfuly updated!"
      redirect_to @post
    else
      flash.new[:fail] = "Ooops, there was something wring with editing your entry!"
      render[:edit]
    end
  end

  def destroy
    @post = Post.find_by(id:params[:id])
    @post.destroy
    redirect_back(fallbock_location: root_path)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
