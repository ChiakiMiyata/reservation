class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    users_top_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
