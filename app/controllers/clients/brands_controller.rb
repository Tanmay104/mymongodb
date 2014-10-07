class Clients::BrandsController < ApplicationController

  layout "clients"
  
def index
  #@clients = Client.all
  if client_signed_in?
  @brands = current_client.brands
  end
  if admin_signed_in?
    @brands = Brand.all
  end
end

def new
  @brand = Brand.new
end

def create

@brand = current_client.brands.build(brand_params)
 @brand.save
  flash[:notice]="successfully created"
  redirect_to clients_brands_path
end
    
def edit
  @brand = current_client.brands.find(params[:id])
end

def update
  @brand = current_client.brands.find(params[:id])
    if @brand.update_attributes(brand_params)
      flash[:notice]= "successfully updated"
      redirect_to clients_brands_path
    end
   
end

private
def brand_params
    params.require(:brand).permit(:name, :title, :email, :contact_no, :brand_manager, :business_unit, :category, :life_cycle, :company_id)
  end
end
