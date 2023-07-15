class UserMailer < ApplicationMailer
  def welcome_email(email)
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end

  def forgot_password_email(email)
    mail(to: email, subject: 'Forgot Password')
  end

  def reset_password_email(email)
    mail(to: email, subject: 'Reset Password')
  end

  def new_user_email(email)
    mail(to: email, subject: 'New User')
  end
end
