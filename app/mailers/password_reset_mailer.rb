class PasswordResetMailer < ActionMailer::Base
  default from: 'admin@ee-prep.com'

  def reset_password_email(user_email, token)
    @token = token
    mail(to: user_email, subject: 'Reset Your Password')
  end
end