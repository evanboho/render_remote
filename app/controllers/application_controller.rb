class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :default_format_html
  
  
  
  def default_format_html
    logger.info request.headers['HTTP_ACCEPT']
    #request.format = "html" #if request.format == "text/html"
    # logger.info @_headers #request.headers["action_controller.instance"].class #HTTP_ACCEPT
  end

end
