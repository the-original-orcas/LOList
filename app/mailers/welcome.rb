class Welcome < ApplicationMailer
default from: "comedy@lolist.io"

def send_welcome(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to LOList!!!")
  end


end
