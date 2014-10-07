class Clients::RegistrationsController < Devise::RegistrationsController
  
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

  def after_sign_up_path_for(resource)
    clients_companies_path
  end

private

  def sign_up_params
    params.require(:client).permit(:first_name, :mid_name,:last_name, :contact_no, :email, :address1, :address2, :zip, :city, :password, :password_confirmation, :setup, :track, :build_plan, :report, :benchmark)
  end
 
protected
  def configure_permitted_parameters
 
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :mid_name, :last_name, :contact_no, :email, :address1, :address2, :zip, :city, :password, :password_confirmation, :setup, :track, :build_plan, :report, :benchmark)}
 
  end
    
  
end