class User < ApplicationRecord
  has_many :posts

  validates :username, :password, presence: true
  validates :username, length: { in: 3..14 }, uniqueness: true
  validates :password, length: { minimum: 3 }
end
