# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def bag
    return @bag if @bag
    if session[:bag_id]
      @bag = Bag.find(session[:bag_id])
    else
      @bag = Bag.create
      session[:bag_id] = @bag.id
    end
    @bag
  end
  helper_method :bag
  
end
