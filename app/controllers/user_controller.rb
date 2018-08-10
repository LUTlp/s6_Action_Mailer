class UserController < ApplicationController

  def new
  end

  def create
    @user = User.new(name: params[:session]["name"], email: params[:session]["email"])
    puts params
    @user.save
    NewsletterMailer.new.send
    flash.now[:danger] = "Tu as bien été enregistré.e !"

    redirect_to '/'
  end


end
