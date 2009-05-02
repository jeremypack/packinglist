class ItemsController < ApplicationController
  def create
#    raise params.inspect
    @item = Item.new(params[:item])
    if @item.save
      flash[:notice] = 'New item created'
    else
      flash[:error] = 'Failed to create item'
    end
    redirect_to :back
  end
  
  def index
    @items = Item.search(params[:search])
  end

end
