class Company
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :brands
  belongs_to :client
  
  
  field :name,                type: String
  field :subdomain,           type: String
  field :address1,            type: String
  field :address2,            type: String
  field :zip,                 type: String
  field :city,                type: String
  field :other_industry_type, type: String
  field :year_start_date,     type: Date
  field :year_end_date,       type: Date
  field :is_blocked,          type: Mongoid::Boolean
   
end
