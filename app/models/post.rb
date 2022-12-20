class Post < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  has_many :comments
  # delegate these methods to this object
  delegate :username, :email, to: :user

  # def username
  #   self.user.username
  # end
end
