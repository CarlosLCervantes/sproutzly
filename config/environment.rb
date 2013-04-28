# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sproutzly::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "Sproutzly",
  :password => "getsproutzly",
  :domain => "sproutzly.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}