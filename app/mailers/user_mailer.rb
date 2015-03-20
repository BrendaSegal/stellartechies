class UserMailer < ActionMailer::Base
  default from: "bsegal26+st@gmail.com"
  #noreply@stellartechies.com

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #
  
  def contact_us(cr)
    @cr = cr
    @test = "testing"
    admin = "bsegal26+admin@gmail.com"
    mail to: admin, subject: "#{@cr.email} contacted Stellar Techies"
  end
  
end
