# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/contact_us
  # https://stellartechies-brendasegal-2.c9.io/rails/mailers/user_mailer/contact_us
  def contact_us
    cr = ContactRequest.first
    UserMailer.contact_us(cr)
  end

end
