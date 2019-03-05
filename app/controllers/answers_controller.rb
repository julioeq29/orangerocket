class AnswersController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @question = Question.find(params[:id])
    @answer = Answer.new
  end


  def create
    @answer = Answer.new(question_params)
    @answer.user = current_user
    @answer.question_id = params[:answer][:question_id]
    authorize @answer
    @answer.save
  end



  def edit


  end

  def update


  end


  def destroy

  end


end
