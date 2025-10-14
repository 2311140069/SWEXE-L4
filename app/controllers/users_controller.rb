class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  
  def create
    u = User.new(uid: params[:user][:uid], pass: BCrypt::Password.create(params[:user][:pass]))
    u.save
    redirect_to users_path
  end

end
