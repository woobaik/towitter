class CommentsController < ApplicationController
  def create
    @post = Post.find_by(id:params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
      flash[:success] = "Your commnet has added!"
      redirect_to post_path(@post)
    else
      flash[:fail] = "Your comment was not added"
      redirect_back(fallbock_location :root_path)
    end
  end

  def edit
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end
