class BlogsController < ApplicationController

#  before_filter :admin_required, :except => :show
  def index
    @blogs = Blog.all
  end
  
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
        redirect_to homepage_path
      else
        flash[:error] = "Something went wrong! sorry..."
        render :action => 'edit'
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
