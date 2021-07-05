class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :title, :content, presence: true
end
