class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url="https://radiant-hollows-54824.herokuapp.com/"
    mail(to: @user.email, subject: "Welcome to MemeWars")
  end
end
