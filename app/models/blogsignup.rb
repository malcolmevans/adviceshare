class Blogsignup < MailForm::Base
  attribute :name,      :validate => true
  attribute :email
  #attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "AdviceShare BLOG Signup!",
      :to => "earlysignups@adviceshare.co",
      :from => %("#{name}" <earlysignups@adviceshare.co>)
    }
  end
end