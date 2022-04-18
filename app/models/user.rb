class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :bio, length: { maximum: 500 }

  has_many :articles
  has_many :serie
end
