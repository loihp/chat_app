class UsersController < ApplicationController

  def subscription
    UserMailer.welcome_email(params[:user][:email_subcrible]).deliver_now
  end
end