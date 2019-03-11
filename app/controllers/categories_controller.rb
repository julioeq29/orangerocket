class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @categories = Category.all
  end

  def show
    # raise
    @category = Category.find(params[:id])
    @tags = Tag.all
    authorize @category
    @questions = Question.all.where(category: @category).order(created_at: :desc)
    if params[:tag].nil?
      @articles = Article.all.where(category: @category)
    else
      @articles = Article.joins(:category).where(tag: params[:tag])
    end
  end
end
