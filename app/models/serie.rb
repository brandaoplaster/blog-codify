class Serie < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :hastags, as: :tagable
end
