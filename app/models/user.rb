class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # バリデーション
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :username, presence: true, length: { in: 1..25, allow_blank: true }, uniqueness: { case_sensitive: true }
  validates :email,
            presence: true,
            uniqueness: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }
  validates :password, length: { in: 8..30, allow_blank: true },
                       format: { with: /\A[a-zA-Z\d@\-_]+\z/, allow_blank: true,
                                 message: "で利用できるのは、半角英数字および記号(@, -, _)のみです。" }

  # ゲストログイン
  def self.guest
    find_or_create_by!(email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
      user.username = "ゲストユーザー"
    end
  end
end
