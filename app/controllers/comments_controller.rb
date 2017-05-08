class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new
    redirect_to article_path(@article)
  end

end
