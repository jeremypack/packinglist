class BagsController < ApplicationController
  def show
    @bag = current_user.bags.find(params[:id])
  end
  
  def email
    PackingListMailer.deliver_bag(bag, params[:email])
    flash[:notice] = "Email successfully sent"
    redirect_to bag
  end
  
  def index
    @bags = Bag.find(:all)
  end
  
end
