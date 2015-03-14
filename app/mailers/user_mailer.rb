class UserMailer < ActionMailer::Base
  default to: "bsegal26+admin@gmail.com", 
          from: "bsegal26@gmail.com"
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
  end
  
end
