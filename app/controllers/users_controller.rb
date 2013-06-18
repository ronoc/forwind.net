class UsersController < ApplicationController
layout "home"
  def new
    redirect_to root_url
    return
    #@user = User.new
  end
  
  def create
    redirect_to root_url
    return
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    redirect_to root_url
    return
    @user = current_user
  end
  
  def update
    redirect_to root_url
    return
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated profile."
      redirect_to root_url
    else
      render :action => 'edit'
    end
  end
end
