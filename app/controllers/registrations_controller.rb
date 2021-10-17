class RegistrationsController < ApplicationController
 # instantiates new user
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
    # stores saved user id in a session
      session[:user_id] = @user.id
      session[:first_name] = @user.first_name
      set_current_user
      redirect_to posts_path, notice: 'Successfully created account'
    else
      render :new
    end
  end
  
  private
  
  def user_params
    # strong parameters
    params.require(:user).permit(:first_name,:email, :password, :password_confirmation)
  end

end
