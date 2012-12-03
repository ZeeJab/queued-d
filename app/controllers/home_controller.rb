class HomeController < ApplicationController
  def index
  end
  def push
    session[:stack] = Stack.new if session[:stack].nil?
    session[:stack].push(params[:color])
    render :json => session[:stack]
  end
  def pop
    session[:stack].pop
    render :json => session[:stack]
  end
end
