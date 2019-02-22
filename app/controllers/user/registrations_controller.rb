class User::RegistrationsController < Devise::RegistrationsController
before_action :config_permitted_paramters


protected
  def config_permitted_paramters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:firstname, :lastname])
    devise_parameter_sanitizer.permit(:account_update, keys:[:firstname, :lastname])
  end

end
