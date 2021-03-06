class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    return render action: 'new' unless @user.save
    redirect_to root_path, notice: "User has been created"
  end

  private
  def user_params
    # strong parameters, prevents mass assignment
    params.
      require(:user).
      permit(:username,
             :password,
             :password_confirmation)
  end
end
