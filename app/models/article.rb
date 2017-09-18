class Article < ApplicationRecord
  belongs_to :user, required: true
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
