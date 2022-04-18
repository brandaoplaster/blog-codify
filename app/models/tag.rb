class Tag < ApplicationRecord
  has_many :hastags

  validates :title, presence: true, uniqueness: { case_sensitive: false }
  validates :status, presence: true
  enum status: { activated: 1, disabled: 0 }
end
