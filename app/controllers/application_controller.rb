class ApplicationController < ActionController::Base

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :family_name, :last_name, :family_name_kana, :last_name_kana, :birthday])
  end
end
