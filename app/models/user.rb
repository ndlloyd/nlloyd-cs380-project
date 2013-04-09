class User < ActiveRecord::Base
  attr_accessible :admin, :password_digest, :firstName, :lastName, :userName, :password, :password_confirmation
  has_secure_password
  has_many :tournaments, foreign_key: "owner", dependent: :destroy
  before_save { userName.downcase! }
  before_save :create_remember_token
  validates :userName, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :firstName, presence: true, length: { maximum: 50 }
  validates :lastName, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 3 }
  validates :password_confirmation, presence: true
private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end