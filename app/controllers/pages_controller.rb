class PagesController < ApplicationController
  
  def homepage
    @bag_templates = Bag.template
    @featured_bag = Bag.featured
    
    @blog = Blog.find(:all, :limit => 1, :order => "created_at asc")
  end
  
end
