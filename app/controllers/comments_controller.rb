class CommentsController < ApplicationController

  def new
    @post = Post.find params[:post_id]
    # render text: 'hi'
    # return
    @comment = @post.comments.build
  end

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.build comment_params[:comment]
    if @comment.save
      redirect_to @post, notice: 'Thanks for commenting'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body)
  end

end

