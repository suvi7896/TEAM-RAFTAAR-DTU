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
