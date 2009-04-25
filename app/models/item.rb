class Item < ActiveRecord::Base
  belongs_to :category
  has_many :bag_items, :dependent => :destroy
  validates_presence_of :name
  
  has_attached_file :image
end
