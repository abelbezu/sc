class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.piece = Piece.find(5)
    @comment.user = User.find(1)
    if @comment.save
      redirect_to @comment.piece.article
    else
      @comment.print_errors
      redirect_to root_path
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
