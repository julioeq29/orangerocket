class AnswersController < ApplicationController
  before_action :authenticate_user!
  respond_to :js, :json, :html

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
    @answer.save
    # >NEED TO FIX IT TO ADD AN ERROR WHEN A USER SEND A BLANK ANSWER< #
    # if @answer.save
    redirect_to question_path(@answer.question)
    # else
    #   render 'question/show'
    # end
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
    @answer = Answer.find(params[:id])
    # redirection_id = answer.question_id
    authorize @answer
    @answer.destroy
    # redirect_to question_path(redirection_id)
  end

  def upvote
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @answers = Answer.all.where(question: @question).order(created_at: :desc)
    authorize @answer

    if @answer.voted_up_by? current_user
      @answer.unliked_by current_user
    else
      @answer.liked_by current_user
    end
  end

private

  def answer_params
    params.require(:answer).permit(:content, :question_id)
  end
end
