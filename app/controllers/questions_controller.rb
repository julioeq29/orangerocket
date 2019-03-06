class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  # def index
  #   if params[:query].present?
  #     @questions = policy_scope(Question).where(category_id: params[:query])
  #   else
  #     @questions = policy_scope(Question)
  #   end



  end
=======
  # end


  def show
    @question = Question.find(params[:id])
    @answers = Answer.all.where(question: @question)
    @answer = Answer.new
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
    authorize @question
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    @question.user = current_user
    @question.category_id = params[:question][:category_id]
    authorize @question
    if @question.save
      redirect_to category_path(@question.category)
    else
      render :edit
    end
  end

  def destroy
    question = Question.find(params[:id])
    authorize question
    question.destroy
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:content, :category_id)
  end

end
