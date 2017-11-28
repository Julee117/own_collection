class User < ActiveRecord::Base
  validates_presence_of :username, :email, :password

  has_many :boards
  has_many :items, through: :boards
  has_secure_password

  extend Slugifiable::ClassMethods

  def slug
    self.username.downcase.gsub(" ", "-")
  end  
end
