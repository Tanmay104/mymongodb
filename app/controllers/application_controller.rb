class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

    
    def after_sign_in_path_for(resource)
      if admin_signed_in?
          admins_home_index_path
      else if client_signed_in?
          new_clients_company_path
          
      end
      end
        
    end
    
  protected
  
  def configure_permitted_parameters
  if
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
  else
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) } 
  end
  end
end