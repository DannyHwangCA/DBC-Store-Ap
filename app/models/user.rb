class User < ActiveRecord::Base

  has_many :carts
  has_many :products, through: :carts

  before_save {self.email.downcase!}

  validates :username, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length:     { maximum: 150 },
                                    format:     { with: VALID_EMAIL_REGEX },
                                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
