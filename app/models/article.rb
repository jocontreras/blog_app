class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
  validates :author, presence: true
end
