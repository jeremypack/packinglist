class PagesController < ApplicationController
  
  def homepage
    @bag = Bag.find(:all, :limit => 4)
  end
  
  def reasons
  end
end
