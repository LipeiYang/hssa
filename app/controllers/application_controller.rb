# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  before_filter :hijack_ie_default_format
  def hijack_ie_default_format
    if request.user_agent =~ /MSIE/ and params['format'].nil?
      params['format'] = 'html'
    end
  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
