class Item < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :name
  
  has_attached_file :image
end
