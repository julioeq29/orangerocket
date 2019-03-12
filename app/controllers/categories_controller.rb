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
    @selected_tag = params[:tag]
    @category = Category.find(params[:id])
    @tags = Tag.all
    authorize @category
    @questions = Question.all.where(category: @category).order(created_at: :desc)
    if params[:tag].nil?
      @articles = Article.all.where(category: @category)
      # while we solve the problem
      # @questions = Question.all.where(category: @category)
    else
      @articles = Article.joins(:category).where(tag: params[:tag])
      # @questions = Question.joins(:category).where(tag: params[:tag])
    end
  end
end
