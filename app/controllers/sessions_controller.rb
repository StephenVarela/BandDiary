class SessionsController < ApplicationController
  def new
    #if session exists redirect to homepage
    if session[:user_id]
      redirect_to :controller => "users", :action => "show", :id => session[:user_id]
    end

  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to :controller => "users", :action => "show", :id => user.id
    else
      render new
    end
  end

  def destroy
    session[:user_id] = nil
    puts "I am reaching here ==========="
    redirect_to root_path
  end
end
