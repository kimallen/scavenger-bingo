class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :create_url
  
  def create_url
		url_ext = ""
		8.times{url_ext << (65 + rand(25)).chr}
		url_ext
	end
end
