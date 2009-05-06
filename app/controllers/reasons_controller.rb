class ReasonsController < ApplicationController
  # GET /reasons
  # GET /reasons.xml
  def index
    @reasons = Reason.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reasons }
    end
  end

  # GET /reasons/1
  # GET /reasons/1.xml
  def show
    @reason = Reason.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reason }
    end
  end

  # GET /reasons/new
  # GET /reasons/new.xml
  def new
    @reason = Reason.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reason }
    end
  end

  # GET /reasons/1/edit
  def edit
    @reason = Reason.find(params[:id])
  end

  # POST /reasons
  # POST /reasons.xml
  def create
    @reason = Reason.new(params[:reason])

      if @reason.save
        flash[:notice] = 'Reason was successfully created.'
      else
        flash[:error] = "Nots so good"
      end
      redirect_to :back
  end

  # PUT /reasons/1
  # PUT /reasons/1.xml
  def update
    @reason = Reason.find(params[:id])

    respond_to do |format|
      if @reason.update_attributes(params[:reason])
        flash[:notice] = 'Reason was successfully updated.'
        format.html { redirect_to(@reason) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reason.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reasons/1
  # DELETE /reasons/1.xml
  def destroy
    @reason = Reason.find(params[:id])
    @reason.destroy

    respond_to do |format|
      format.html { redirect_to(reasons_url) }
      format.xml  { head :ok }
    end
  end
end
