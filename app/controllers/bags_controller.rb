class BagsController < ApplicationController
  def show
    
  end
  
  def email
    PackingListMailer.deliver_bag(bag, params[:email])
    flash[:notice] = "Email successfully sent"
    redirect_to bag
  end
end
