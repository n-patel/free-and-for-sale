class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def redirect_handler(item)
    case item.category
    when "clothing"
      clothing_path
    when "electronics"
      electronics_path
    when "furniture"
      furniture_path
    when "housing"
      housing_path
    when "misc"
      misc_path
    when "school"
      school_path
    when "services"
      services_path
    end
  end

end
