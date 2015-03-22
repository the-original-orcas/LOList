class Welcome < ApplicationMailer::Base
default from: "comedy@lolist.io"

def send_welcome(current_user)
    @user = current_user
    mail(:to => current_user.email, :subject => "Welcome to LOList!!!")
  end

end
