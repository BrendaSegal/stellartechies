class UserMailer < ActionMailer::Base
  default to: "bsegal26+admin@gmail.com", from: "bsegal26@gmail.com"
  #noreply@stellartechies.com

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #
  
  def contact_us(cr)
    @cr = cr
    admin = "bsegal26+admin@gmail.com"
    mail to: admin, subject: "#{@cr.email} contacted Stellar Techies", body: "#{@cr.message}"
    mail to: "#{@cr.email}", subject: "Thank you for your emailing Stellar Techies!", body: "Thank you for contacting Stellar Techies.  We will get back to you within 1-2 business days.  Here is a copy of the message you sent us: <br/> #{@cr.message}"
  end
  
end
