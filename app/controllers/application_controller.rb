class Site::ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_objects
  
  def load_objects
    @newsletter = Newsletter.new
  end

end
