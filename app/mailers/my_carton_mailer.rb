class MyCartonMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.my_carton_mailer.shipped_email.subject
  #
  def shipped_email(options, _deprecated_options = {})
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
