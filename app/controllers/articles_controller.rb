class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    # @comment = Comment.new
    # binding.pry
  end
end
