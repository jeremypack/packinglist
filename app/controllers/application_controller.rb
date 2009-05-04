# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  
  def current_bag
    return @current_bag if @current_bag
    if session[:bag_id]
      @current_bag = Bag.find(session[:bag_id])
    else
      @current_bag = Bag.create
      session[:bag_id] = @current_bag.id
    end
    @current_bag
  end
  helper_method :current_bag

end
