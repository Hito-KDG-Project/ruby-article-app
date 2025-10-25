class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true
  validates :summary, presence: true
  has_many :comments, dependent: :destroy
end
