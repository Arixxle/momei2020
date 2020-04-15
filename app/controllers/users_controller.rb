class UsersController < ApplicationController

  def login
    @user = User.new
  end

  def login_action
    if user_params[:password] == user_params[:password_confirmation]
      @user = user_params
      session[:hero2020] = @user[:email]
      redirect_to '/'
    else
      render :login
    end
  end

  def logout
    session[:hero2020] = nil
    redirect_to '/'
  end
  

  def signup
    @user = User.new
  end

  def registration
    if user_params[:password] == user_params[:password_confirmation]
      @user = User.new(user_params)
      if @user.save
        redirect_to '/'
      else
        render :signup
      end
    else
      redirect_to '/signup'
    end
  end



  private
  def user_params
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation
                                )
  end
end