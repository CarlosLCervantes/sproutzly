class Notifier < ActionMailer::Base
  default :from => "team@sproutzly.com"

  # send a signup email to the user, pass in the user object that contains the user's email address
  def signup_email(user)
    mail( :to => user.email, :subject => "Thanks for signing up" )
  end

  def newsletter_thanks(email)
    mail( :to => email, :subject => "Newsletter Confirmation" )
  end
end