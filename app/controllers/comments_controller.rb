class CommentsController < ApplicationController

  # def new
  #   @article = Article.find(params[:article_id])
  #   @comment = Comment.new
  # end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
  end

end
