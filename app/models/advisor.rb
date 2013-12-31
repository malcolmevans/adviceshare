class Advisor < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :education
  attribute :preferences
  attribute :expertise
  attribute :linkedin

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