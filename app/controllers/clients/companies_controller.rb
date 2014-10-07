class Clients::CompaniesController < ApplicationController
  
  before_action :authenticate_client! , except: [:index, :clientlist]
#  before_action :load_client
  
  layout "clients"
  
  def index
    
    if client_signed_in?
    puts "fffffffffffffffffffffff#{current_client.inspect}"      
      @companies = current_client.companies
    end
    if admin_signed_in?
      @companies= Company.all
#      Client.all.each do |client|
#        client.companies.each do |company|
#        @companies1 = company.all
#      end
#      end
    end
  end
  
  def clientlist
    @clients= Client.all
  end
  
  def new
    @company= Company.new
   end
   
  def create
    @company = current_client.companies.build(company_params)
    #@company= Company.new(params[:company])
    @company.save
      flash[:notice]="successfully created"
      redirect_to clients_companies_path
    
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  def edit
    @company = current_client.companies.find(params[:id])
  end 
  
  def update
    @company= current_client.companies.find(params[:id])
    if @company.update_attributes(company_params)
      flash[:notice]="successfully updated"
      redirect_to clients_companies_path
      #if @company.update_attributes(params[:company])
        
     end
  end
 
  private
  def company_params
    params.require(:company).permit(:name, :subdomain, :address1, :address2, :zip, :city, :other_industry_type, :year_start_date, :year_end_date)
  end
  
#   def load_client
#      @client = Client.find(params[:client_id])
#    end

  
 end