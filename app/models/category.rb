class Category < ActiveRecord::Base
  has_many :items, :order => 'name'
  validates_presence_of :title
end
