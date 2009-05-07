class BagsController < ApplicationController

  def show
#    @bag = current_user.bags.find(params[:id])
    @bag = Bag.find(params[:id])
  end
  
  def make_current
    @bag = Bag.find(params[:id])
    puts 'make current'
    self.current_bag = @bag
    redirect_to category_path(Category.first)
  end

  
  def email
    PackingListMailer.deliver_bag(bag, params[:email])
    flash[:notice] = "Email successfully sent"
    redirect_to bag
  end
  
  def index
    @bags = current_user.bag.find(:all)
  end
  
end
