class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @questions = policy_scope(Question).where(category_id: params[:query])
    else
      @questions = policy_scope(Question)
    end

  end

  def show
    @question = Question.find(params[:id])
    authorize @question
  end

  def new
    @user = current_user
    @question = Question.new
    authorize @question
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    @question.category_id = params[:question][:category_id]
    authorize @question
    if @question.save
      redirect_to category_path(@question.category)
    else
      render :new
    end

  end

  def edit
    @question = Question.find(params[:id])


  end

  def delete

  end

  private

  def question_params
    params.require(:question).permit(:content, :category_id)
  end

end
