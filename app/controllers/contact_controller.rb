class ContactController < ApplicationController

  def new
    @message = params[:message]
  end

  def create
    name = params[:name]
    email = params[:email]
    body = params[:comments]

    if ContactMailer.contact_email(name, email, body).deliver
      flash[:notice] = "Sent!"
    else
      flash[:notice] = "Could not send your message."
    end
    redirect_to root_path
  end

end
