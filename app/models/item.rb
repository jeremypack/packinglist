class Item < ActiveRecord::Base
  belongs_to :category
  has_many :bag_items, :dependent => :destroy
  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false, :message => "must be unique"

  # Paperclip
  has_attached_file :image, :styles => { :thumb => "50x50#", :normal => "100x100#" }
  validates_attachment_content_type :image, :content_type => 'image/jpeg'  
  validates_attachment_presence :image
end
