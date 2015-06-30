class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment added!"
      redirect_to :back
    else
      render "posts/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :author)
  end
end
