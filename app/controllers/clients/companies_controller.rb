class Clients::CompaniesController < ApplicationController
  
  
  def index
    @companies = Company.all
  end
  
  def new
    @company=Company.new
   end
   
  def create
    @company = Company.find(params[:company])
    if @company.save
      flash[:notice]="successfully created"
    end
    render @company
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  def edit
    
  end 
  
  def update
    @company= Company.find(params[:id])
     if @company.update_attributes(params[:company])
        flash[:notice]="successfully created"
     end
  end
  
end
