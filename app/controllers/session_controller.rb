class SessionController < ApplicationController
  def new 
    @user = User.new
  end

  def create 
    @user = User.find_by(email: params[:email])

    if !@user 
      @user.errors.add(:base, :invalid, message: "username not found")
      render 'new'
    elsif !@user.authenticate(params[:password])
      @user.errors.add(:base, :invalid, message: "username not found")
      render 'new'
    else 
      session[:user_id] = @user.id 
      redirect_to '/welcome'
    end 
  end

  def login 
  end 

  def logout 
    session.delete(:user_id)
    redirect_to 'welcome'
  end

  def welcome
  end
end
