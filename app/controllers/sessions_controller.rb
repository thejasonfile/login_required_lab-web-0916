class SessionsController < ApplicationController

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to '/sessions/show'
    end
  end

  def new

  end

  def destroy
    if session[:name] = ""
      session[:name] = nil
    else
      session[:name].destroy
    end
      redirect_to root_path
  end

end