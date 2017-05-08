class CommentsController < ApplicationController

  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

end
