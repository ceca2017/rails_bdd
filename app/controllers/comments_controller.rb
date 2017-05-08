class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    # @comment = @article.comments.new
    @article.comments.create(comment_params)
    redirect_to article_path(@article)
    binding.pry
  end

  private

  def comment_params
    params[:comment].permit(:comment, :email)
  end

end
