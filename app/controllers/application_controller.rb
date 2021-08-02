class ApplicationController < ActionController::Base
  before_action :user_sign_up, if: :devise_controller?

  private
  def user_sign_up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
