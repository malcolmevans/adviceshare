class Advisor < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :expertise,      :validate => true
  attribute :linkedin,      :validate => true
  attribute :education
  attribute :job
  attribute :Job_Responsibilities
  attribute :preferences,      :validate => true

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "AdviceShare Adviser Signup!",
      :to => "advisors@adviceshare.co",
      :from => %("#{name}" <#{email}>)
    }
  end
end