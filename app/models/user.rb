class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+]+([\-\.]\w+)*@\w+([\-\.]\w+)*\.[a-z]+\z/i
#  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\w\.[a-z]+\z/i

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
    uniqueness: {case_sensitive: false}
  validates :password, length: { minimum:6 }
  before_save { email.downcase! }
  has_secure_password
end
