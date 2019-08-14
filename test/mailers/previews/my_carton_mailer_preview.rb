# Preview all emails at http://localhost:3000/rails/mailers/my_carton_mailer
class MyCartonMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/my_carton_mailer/shipped_email
  def shipped_email
    MyCartonMailer.shipped_email
  end

end
