class Bag < ActiveRecord::Base
  has_many :bag_items, :dependent => :destroy, :include => :item, :order => 'items.name'
  has_many :items, :through => :bag_items
  belongs_to :user

  named_scope :recent, :order => 'created_at DESC'
  named_scope :template, :conditions => {:template => true}
  
  def self.featured
    find(:first, :conditions => {:featured => true})
  end
  

  attr_protected :template, :featured
  
  after_save :ensure_only_one_bag_is_featured
  
  def add_item(item)
    if bag_item = bag_items.detect{|bag_item| bag_item.item_id == item.id}
      bag_item.increment! :quantity
    else
      bag_items.create :item => item, :quantity => 1
    end
    bag_items(true)
  end
 
  def ensure_only_one_bag_is_featured
    if featured?
      Bag.update_all({:featured => false}, ['featured = 1 AND id != ?', id])
    end
  end

  def self.from_template(template)
    bag = Bag.create
    template.bag_items.each do |bag_item|
      bag.bag_items.create(:item => bag_item.item, :quantity => bag_item.quantity)
    end
    bag
  end
 
end
