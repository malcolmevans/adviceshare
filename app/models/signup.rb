class Signup < MailForm::Base
  attribute :name,      :validate => true
  attribute :email
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "AdviceShare Landing Signup!",
      :to => "earlysignups@adviceshare.co",
      :from => %("#{name}" <earlysignups@adviceshare.co>)
    }
  end
end