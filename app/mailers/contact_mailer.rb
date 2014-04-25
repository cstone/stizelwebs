class ContactMailer < ActionMailer::Base
  attr_accessor :name, :email, :subject, :message
  
  default to: "info@stizelwebs.com"

  def email_us(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message

    mail(name: name, from: email, subject: subject, message: message, date: Time.now)
  end
end
