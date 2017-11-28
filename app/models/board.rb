class Board < ActiveRecord::Base
  belongs_to :user
  has_many :items

  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods
end
