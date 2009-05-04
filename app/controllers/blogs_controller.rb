class BlogsController < ApplicationController
  
  def new
    @blog = Blog.new
  end
  
  def show
    @blog = Blog.find(params[:id])
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
