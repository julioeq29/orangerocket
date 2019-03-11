class Api::V1::CategoriesController < Api::V1::BaseController
  def index
    if params[:query].present?
      @categories = policy_scope(Category).global_search(params[:query])
    else
      @categories = policy_scope(Category).all
    end
  end
end
