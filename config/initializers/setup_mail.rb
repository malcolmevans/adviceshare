ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "yourdomain.com",
  :user_name            => "your_name",
  :password             => "your_password",
  :authentication       => "plain",
  :enable_starttls_auto => true
}