class SessionsController < ApplicationController
  def new
    redirect_to '/' if session[:name] && !session[:name].empty?
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login' 
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end
  def destroy
    session.clear
    redirect_to '/'
  end
end
