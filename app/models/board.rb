class Board < ActiveRecord::Base
  belongs_to :user
  has_many :items

  extend Slugifiable::ClassMethods

  def slug
    self.name.downcase.gsub(" ", "-")
  end
end
