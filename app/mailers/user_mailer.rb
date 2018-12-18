# frozen_string_literal: true

# app/mailers/user_mailer.rb
class UserMailer < ActionMailer::Base
  default from: 'mailer-test@kasza.com'

  def follow_up_email(user_id)
    @user = User.find(user_id)
    @url = 'http://example.com/login'

    mail(
      to: @user.email,
      subject: 'We hope you are enjoying our app'
    )
  end
end
