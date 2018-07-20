class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        allowed_keys = [:email, :first_name, :last_name, :street_address, :street_address_2, :city, :state, :zip]
        devise_parameter_sanitizer.permit(:sign_up, keys: allowed_keys)
        devise_parameter_sanitizer.permit(:account_update, keys: allowed_keys)
    end
end
