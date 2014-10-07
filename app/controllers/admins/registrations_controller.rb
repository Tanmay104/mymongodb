class Admins::RegistrationsController < Devise::RegistrationsController
  
   before_action :configure_permitted_parameters, if: :devise_controller?
      
  layout "application"
  
  def new
    super
  end
  
  def create
    super
  end

  def edit
    super
  end
 
 protected
  
  def configure_permitted_parameters
 
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) }
 
  end
    
    
  
end