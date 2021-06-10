class User < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :username, presence: true
  validates :bio, presence: true
  validates :post, presence: true
  validates :following, presence: true
  validates :follower, presence: true
  validates :email, presence: true
end
