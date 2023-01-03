class UsersController < ApplicationController

  def create
      user = User.new(email: params[:email], city: params[:city])
      if user.save
        WeatherReportJob.perform_now
        render json: user
      else 
        render json: {error: "Failed to Create User !"}
      end
   end

   def unsubscribe 
    user = User.find(params[:user])
    user.destroy 
    render json: {success: "You Unsubscribe !"}
   end
end
