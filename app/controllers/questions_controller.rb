class QuestionsController < ApplicationController
  def new 
    @question = Question.new
    @question.piece = Piece.new

  end

  def create
    @question = Question.new
    
    if @question.save
      @piece = @question.build_piece(question_params[:piece_attributes])
      if @piece.save
        redirect_to @question
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
    if @question.piece
      @comment = @question.piece.comments.build
    end
  end

  private

    def question_params
      params.require(:question).permit(piece_attributes: [:id, :title, :body])
    end
end
