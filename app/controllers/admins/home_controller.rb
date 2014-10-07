class Admins::HomeController < ApplicationController
before_filter :authenticate_admin!, except: :home

  layout "admins", except: [:home]
  
  def home
    
  end
  
  
def index
  #@admins = Admin.all
  @admin = current_admin
end


end