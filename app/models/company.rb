class Company
  include Mongoid::Document
  field :name, type: String
  field :subdomain, type: String
  field :address1, type: String
  field :address2, type: String
  field :zip, type: String
  field :city, type: String
  field :other_industry_type, type: String
  field :f_year_start_date, type: Date
  field :f_year_end_date, type: Date
  field :is_blocked, type: Mongoid::Boolean
  
  index :subdomain, :unique => true
  
end
