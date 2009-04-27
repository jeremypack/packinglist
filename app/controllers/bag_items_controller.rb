class BagItemsController < ApplicationController

  def create
    item = Item.find(params[:item_id])
    bag.add_item(item)
    redirect_to :back
  end
  
  def update
    @bag_item = bag.bag_items.find(params[:id])
    @bag_item.attributes = params[:bag_item]
    @bag_item.save

    puts params.inspect

    respond_to do |format|
      format.html { redirect_to(:back) }
      format.js {  }
    end
  end
  
  def destroy
#    @bag_item = bag.bag_item.find(:all)
#    @bag_item.destroy
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
