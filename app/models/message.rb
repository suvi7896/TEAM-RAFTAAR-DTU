class Message
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :content
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
                    format:     { with: VALID_EMAIL_REGEX }
  validates :subject, presence: true, length: { maximum: 300 }
  validates :content, presence: true
end

                   # attribute :name,      :validate => true
                   # attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
                   # attribute :message
                   # attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
                   # def headers
                   #   {
                     #     :subject => "My Contact Form",
                   #    :to => "your_email@example.org",
                      #    :from => %("#{name}" <#{email}>)
                    #  }
                   # end
#end