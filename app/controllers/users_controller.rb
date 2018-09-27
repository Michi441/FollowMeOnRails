class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def follow
    @user = User.find(params[:id])

    current_user.follow(@user)

    redirect_to action: 'show'
  end

  def unfollow

    @user = User.find(params[:id])

    current_user.stop_following(@user)

    redirect_to action: 'show'
  end

  def followers
    @user = User.find(params[:id])

  end

  def following
    @user = User.find(params[:id])
  end
end
