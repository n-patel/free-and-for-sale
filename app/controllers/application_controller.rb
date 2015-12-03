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

before_action :configure_permitted_parameters, if: :devise_controller?
def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :name
  devise_parameter_sanitizer.for(:account_update) << :name
end

end
