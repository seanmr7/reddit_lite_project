class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :link, presence: true
  validates :title, length: { maximum: 120 }
end
