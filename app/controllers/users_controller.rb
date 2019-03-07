class UsersController < ApplicationController

  def index
    @users = User.where.not(latitude: nil, longitude: nil)
  end

  def show
    # users = User.where.not(latitude: nil, longitude: nil)
    user_answers = current_user.answers
    answered_users = []
    user_answers.each do |answer|
      answered_users << answer.question.user
    end
    located_answered_users = answered_users.reject do |user|
      user.latitude.nil? || user.longitude.nil?
    end

    @markers = located_answered_users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { user: user })

      }
    end
    @user = User.find(params[:id])
    authorize @user
  end
end
