class Item < ActiveRecord::Base
  belongs_to :board
  has_many :reviews, dependent: :destroy
end
