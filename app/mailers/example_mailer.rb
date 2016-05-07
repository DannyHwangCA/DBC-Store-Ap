class ExampleMailer < ApplicationMailer
  default from: "foxhoundshield@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to the future")
  end

  def checkout_email(current_user)
    @user = current_user
    mail(to: @user.email, subject: "Thank you for your purchase.")
  end
end
