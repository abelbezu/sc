class ArticlesController < ApplicationController
  def index

  end

  def show
    @article = Article.find(params[:id])
    @comment = @article.piece.comments.build
  end

  def new
    @article = Article.new
    @article.piece = Piece.new
  end

  def create
    @article = Article.new
    # TODO: The following is a very hacky solution. Come back and fix it.
    if @article.save
      @piece = @article.build_piece(article_params[:piece_attributes])
      if @piece.save
        redirect_to @article
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end


  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end 

  private

    def article_params
      params.require(:article).permit(piece_attributes: [:id, :title, :body])
    end
end
