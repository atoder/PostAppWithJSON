class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #disabled so I can do curl calls would be enabled for real live app
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
end
