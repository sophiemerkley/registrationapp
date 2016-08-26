class UserController < ApplicationController

  def register

    if (!params.has_key?(:username) || params[:username].strip.empty?) ||   (!params.has_key?(:password) || params[:password].strip.empty?)
      redirect_to '/'
    else
    @user = User.new

    @user.username = params[:username]
    @user.password = params[:password]
    @user.name = params[:name]
    @user.street = params[:street]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.country = params[:country]
    @user.email = params[:email]


    cookies[:user] = @user.to_yaml
  end
  end # ends register

  def index
  end # ends index
end #ends UserController
