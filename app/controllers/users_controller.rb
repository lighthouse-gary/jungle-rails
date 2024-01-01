# app/controllers/users_controller.rb

class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      # Log in the user by setting the session user_id
      session[:user_id] = user.id
      # Redirect to the home page or other desired page after successful signup
      redirect_to '/'
    else
      # If signup fails, redirect back to the signup page
      redirect_to '/signup'
    end
  end   

  private

  def user_params
    # Update these parameters to match your User model attributes
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end