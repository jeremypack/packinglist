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
    end
  end
  helper_method :current_bag

  def current_bag=(bag)
    @current_bag = bag
    session[:bag_id] = bag.id
  end



  # def ensure_current_bag_exists
  #   if current_bag.nil?
  #     start_new_bag
  #   end
  # end
  # 
  # def assign_current_bag_to_current_user
  #   
  #   puts 'assign_current_bag_to_current_user'
  #   
  #   # if a bag in session belongs to another user, start a new one
  #   if current_bag and current_bag.user and current_bag.user != current_user
  #     start_new_bag
  #   end
  #   
  #   if current_bag.nil? and bag = current_user.most_recent_bag
  #     puts 'assign bag from database to session'
  #     self.current_bag = bag
  #   end
  #   
  #   ensure_current_bag_exists
  #   
  #   current_bag.user = current_user
  #   current_bag.save    
  # end
  
  def admin_required
    current_user && current_user.admin? ? true : access_denied
  end
  
  
  
end
