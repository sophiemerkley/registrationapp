class ConfirmationController < ApplicationController
  def valid_credentials

    @user = YAML.load(cookies[:user])


    if @user.username != params[:username] || @user.password != params[:password]
      render '/user/register'
    end


  end
end
