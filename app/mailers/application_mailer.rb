class ApplicationMailer < ActionMailer::Base
  default from: "comedy@lolist.io"
  layout 'mailer'

  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to LOList!')
  end
end
