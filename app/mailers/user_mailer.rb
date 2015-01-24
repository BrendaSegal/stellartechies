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
    mail to: cr.email, subject: "Thank you for contacting Stellar Techies"
  end
  
  #def contact_us
    #@greeting = "Hi"

    #mail to: "to@example.org"
 # end
end
