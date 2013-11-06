class Earlysignup < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :expertise,      :validate => true
  attribute :linkedin,      :validate => true
  attribute :education,      :validate => true
  attribute :job,      :validate => true
  attribute :jobresponsibilities,      :validate => true
  attribute :preferences,      :validate => true

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "AdviceShare Mentor Signup!",
      :to => "mentors@adviceshare.co",
      :from => %("#{name}" <#{email}>)
    }
  end
end