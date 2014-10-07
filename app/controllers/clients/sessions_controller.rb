class Clients::SessionsController < Devise::SessionsController
  
layout "application"
  def new
    super
  end
  
  def after_sign_in_path_for(resource)
    clients_companies_path
  end

  
end
