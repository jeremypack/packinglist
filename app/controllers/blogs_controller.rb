class BlogsController < ApplicationController

  before_filter :admin_required

  
  def new
    @blog = Blog.new
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end
  
  def update
    @blog = Blog.find(params[:id])
      if @blog.update_attributes(params[:blog])
        flash[:notice] = 'Blog was successfully updated.'
      else
        flash[:error] = "Something went wrong! sorry..."
      end
    end
  end
  
  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      flash[:notice] = "Successfully created blog."
      redirect_to @blog
    else
      render :action => 'new'
    end
  end
end
