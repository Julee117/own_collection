class User < ActiveRecord::Base
  validates :username, :email, presence: true
  validates :username, uniqueness: true

  has_many :boards
  has_many :items, through: :boards
  has_many :reviews
  has_secure_password

  extend Slugifiable::ClassMethods

  def slug
    self.username.downcase.gsub(" ", "-")
  end
end
