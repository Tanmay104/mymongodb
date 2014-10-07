class Admins::SessionsController < Devise::SessionsController
  
  layout "application"
  
 def new
   super
 end
  
  def after_sign_in_path_for(resource)
     admins_home_index_path
  end
  
end
