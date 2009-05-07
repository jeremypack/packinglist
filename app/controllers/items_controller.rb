class ItemsController < ApplicationController
  
  before_filter :admin_required, :except => :create
  
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
  
  def edit
    @item = Item.find(params[:id])  
  end
  
  def update
    @item = Item.find(params[:id])
      if @item.update_attributes(params[:item])
        flash[:notice] = 'Item was successfully updated.'
      else
        flash[:error] = 'Something went wrong'
    end
    redirect_to items_path
  end

  
  def destroy
    @item = Item.find(params[:id])
     @item.destroy
  end

end
