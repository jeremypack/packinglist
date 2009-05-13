class BagItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :bag
  validates_presence_of :item, :bag, :quantity
  
  named_scope :in_category, lambda {|category|  {:conditions => ['items.category_id = ?',category.id], :include => :item}  }
end
