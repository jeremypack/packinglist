class BagItem < ActiveRecord::Base
belongs_to :item
belongs_to :bag
validates_presence_of :item, :bag, :quantity
end
