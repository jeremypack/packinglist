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
  
  def increase_quantity
    @bag_item = bag.bag_items.find(params[:id])
    @bag_item.increment! :quantity
    redirect_to :back
  end
  
  def decrease_quantity
    @bag_item = bag.bag_items.find(params[:id])
    if @bag_item.quantity > 1 
        @bag_item.decrement! :quantity
      else
        @bag_item.destroy
      end
    redirect_to :back
  end
  
end
