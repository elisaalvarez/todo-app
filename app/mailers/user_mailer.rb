class UserMailer < ApplicationMailer
  default from: 'uni.soft@hotmail.com'

  def welcome_email
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Site')
  end
end
