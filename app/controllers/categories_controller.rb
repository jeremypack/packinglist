class CategoriesController < ApplicationController
  
  before_filter :ensure_current_bag_exists
  
  def show
    @category = Category.find(params[:id])
  end
  
end
