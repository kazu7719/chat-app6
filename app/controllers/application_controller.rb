class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :parameter_method, if: :devise_controller?

  private
  def parameter_method
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
