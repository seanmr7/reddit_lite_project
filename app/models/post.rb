class Post < ApplicationRecord
  belongs_to :user

  validates :title, :link, presence: true
  validates :title, length: { maximum: 120 }
end
