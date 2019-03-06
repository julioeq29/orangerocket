class UsersController < ApplicationController

  def index
    @users = User.where.not(latitude: nil, longitude: nil)
  end

  def show
    users = User.where.not(latitude: nil, longitude: nil)

    @markers = users.map do |user|
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
