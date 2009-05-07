class BagsController < ApplicationController

  def show
#    @bag = current_user.bags.find(params[:id])
    @bag = Bag.find(params[:id])
  end
  
  def make_current
    @bag = Bag.find(params[:id])
    self.current_bag = @bag
    redirect_to category_path(Category.first)
  end

  
  def email
    PackingListMailer.deliver_bag(bag, params[:email])
    flash[:notice] = "Email successfully sent"
    redirect_to bag
  end
  
  def index
    @bags = current_user.bags
  end
  
  def update
    @bag = Bag.find(params[:id])
    
    if params[:elementid]
      
      if %w(name title country description departure_date).include?(params[:elementid])
        @bag.update_attribute(params[:elementid], params[:value])
      end
      render :text => @bag.send(params[:elementid])

    else
      @bag.update_attributes(params[:bag])
      @bag.template = params[:bag][:template]
      @bag.featured = params[:bag][:featured]
      @bag.save
      redirect_to bags_path
    end
  end

  def use_template
    @template = Bag.template.find(params[:id])
    self.current_bag = Bag.from_template(@template)
    if current_user
      current_bag.user = current_user
      current_bag.save
    end
    redirect_to category_path(Category.first)
  end
  
end
