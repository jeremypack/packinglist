class PagesController < ApplicationController
  
  def homepage
    @bag = Bag.find(:all, :limit => 1)
    @bag_templates = Bag.find(:all, :limit => 5)
    
    @blog = Blog.find(:all, :limit => 1, :order => "created_at asc")
  end
  
  def reasons
  end
end
