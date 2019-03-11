class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @categories = policy_scope(Category).global_search(params[:query])
    else
      @categories = policy_scope(Category).all
    end
  end

  def show
    @category = Category.find(params[:id])
    @tags = Tag.all
    authorize @category
    @questions = Question.all.where(category: @category).order(created_at: :desc)
    @articles = Article.all.where(category: @category)
  end
end
