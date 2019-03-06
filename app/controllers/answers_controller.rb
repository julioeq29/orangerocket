class AnswersController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user = current_user
    @answer.content = params[:answer][:content]
    @answer.question_id = params[:question_id]
    authorize @answer
    if @answer.save
      redirect_to question_path(params[:question_id])
    else
      render :new
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    authorize @answer
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update(answer_params)
    @answer.user = current_user
    @answer.content = params[:answer][:content]
    @answer.question_id
    authorize @answer
    if @answer.save
      redirect_to question_path(@answer.question_id)
    else
      render :new
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    redirection_id = answer.question_id
    authorize answer
    answer.destroy
    redirect_to question_path(redirection_id)
  end

private

  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end

end
