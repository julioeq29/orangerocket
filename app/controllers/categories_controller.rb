class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @tags = Tag.all
    authorize @category
    @questions = Question.all.where(category: @category)
  end
end
