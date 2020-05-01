class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(param_filter)

    if @user.save
      redirect_to new_user_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(param_filter)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render 'edit'
    end
  end
end
