class Bag < ActiveRecord::Base
  has_many :bag_items, :dependent => :destroy
  has_many :items, :through => :bag_items
  
  def add_item(item)
    if bag_item = bag_items.detect{|bag_item| bag_item.item_id == item.id}
      bag_item.increment! :quantity
    else
      bag_items.create :item => item, :quantity => 1
    end
  end
  
end
