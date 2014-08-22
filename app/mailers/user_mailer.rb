class UserMailer < ActionMailer::Base
  default from: "from@example.com"
# Information user for Mandrill, and to send attachments with the mails
  def registration_confirmation(user)
    @user = user
    attachments["rails.png"] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail(:to => user.email, :subject => "Registered")
  end
  
end
