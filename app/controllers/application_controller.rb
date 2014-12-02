class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  class AccessDenied < StandardError
  end

  rescue_from AccessDenied, with: :elephants

  def elephants
    render file: "public/404", status: 404, layout: false
  end

end
