class CategoriesController < ApplicationController
  
  # before_filter :ensure_current_bag_exists
  
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  end
  
end
