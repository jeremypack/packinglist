class ReasonsController < ApplicationController

  before_filter :admin_required, :except => :index

  def index
    @reasons = Reason.all
  end

  def show
    @reason = Reason.find(params[:id])
  end

  def new
    @reason = Reason.new
  end

  def edit
    @reason = Reason.find(params[:id])
  end

  def create
    @reason = Reason.new(params[:reason])

      if @reason.save
        flash[:notice] = 'Reason was successfully created.'
      else
        flash[:error] = "Not so good"
      end
      redirect_to :back
  end

  def update
    @reason = Reason.find(params[:id])
      if @reason.update_attributes(params[:reason])
        flash[:notice] = 'Reason was successfully updated.'
      else
        flash[:error] = "Something went wrong! sorry..."
      end
      redirect_to reasons_path
  end

  def destroy
    @reason = Reason.find(params[:id])
    @reason.destroy
  end
end
