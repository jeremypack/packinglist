class PagesController < ApplicationController
  
  def homepage
    @bag = Bag.find(:all, :limit => 1)
    @blog = Blog.find(:all, :limit => 1, :order => "created_at asc")
  end
  
  def reasons
  end
end
