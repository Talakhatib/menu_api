class UsersController < ApplicationController

  def create
      user = User.new(email: params[:email], city: params[:city])
      if user.save
       render json: user
      else 
        render json: {error: "Failed to Create User !"}
      end
   end

   def destroy 
    user = User.find(params[:id])
    user.destroy 
    render json: {flash: "You Unsubscribe !"}
   end
end
