class Mentor < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  
  attribute :education
  attribute :job
  attribute :jobresponsibilities
  attribute :expertise
  attribute :preferences

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Mentor Signup!",
      :to => "malcolm@adviceshare.co",
      :from => %("#{name}" <#{email}>)
    }
  end
end