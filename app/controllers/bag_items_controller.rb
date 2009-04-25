class BagItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    bag.add_item(item)
    redirect_to :back
  end
  
  def update
  end
  
  def destroy
  end
  
end
