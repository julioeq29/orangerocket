class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @categories = policy_scope(Category).global_search(params[:query])
      @questions = policy_scope(Question).question_search(params[:query])
      @articles = policy_scope(Article).article_search(params[:query])

    else
      @categories = policy_scope(Category).global_search(params[:query])
      @articles = []
      @questions = []
    end
  end

  def show
    @selected_tag = params[:tag]
    @category = Category.find(params[:id])
    @tags = Tag.all
    authorize @category
    @questions = Question.all.where(category: @category).order(created_at: :desc)
    @params = params
    if params[:tag].nil?
      @articles = Article.all.where(category: @category).order(pub_date: :desc)
      # while we solve the problem
      # @questions = Question.all.where(category: @category)
    else
      @articles = Article.joins(:category).where(tag: params[:tag]).order(pub_date: :desc)
      # @questions = Question.joins(:category).where(tag: params[:tag])
    end
  end
end
