class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name],
                     password: params[:user][:password],
                     email: params[:user][:email],
                     phone: params[:user][:phone])

    if @user.save
      #redirect
    else
      #render
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone = params[:user][:phone]

    if @user.save
      #redirect
    else
      #render
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    #redirect to home page
  end
end
