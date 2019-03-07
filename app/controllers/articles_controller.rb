class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def upvote
    @article = Article.find(params[:id])
    authorize @article

    if @article.voted_up_by? current_user
      @article.unliked_by current_user
    else
      @article.liked_by current_user
    end
  end
end
