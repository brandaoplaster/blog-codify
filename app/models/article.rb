class Article < ApplicationRecord
  before_save :default_value

  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  belongs_to :serie, optional: true
  has_many :hastags, as: :tagable
end
