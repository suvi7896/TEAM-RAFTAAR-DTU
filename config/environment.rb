# Load the Rails application.
require_relative 'application'


ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => "",
    :port                 => 587,
    :domain               => "",
    :user_name            => "",
    :password             => "",
    :authentication       => "plain",
    :enable_starttls_auto => true
}



# Initialize the Rails application.
Rails.application.initialize!
