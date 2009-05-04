class Item < ActiveRecord::Base
  belongs_to :category
  has_many :bag_items, :dependent => :destroy
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false, :message => "must be unique"

  # Paperclip
  has_attached_file :image, :styles => { :thumb => "50x50#", :normal => "100x100#" }
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"], :order => "created_at")
    else
      find(:all, :order => "created_at")
    end
  end
  
end
