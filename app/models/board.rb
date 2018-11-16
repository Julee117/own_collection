class Board < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  extend Slugifiable::ClassMethods

  def slug
    self.name.downcase.gsub(" ", "-")
  end
end
