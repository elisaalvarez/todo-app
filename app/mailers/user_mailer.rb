class UserMailer < ApplicationMailer
  # default from: 'uni.soft@hotmail.com'

  def submission(user)
    @user = user
    mail(to: @user.email, subject: 'New contact page submission')
  end
end
