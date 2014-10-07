class Brand
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :client
    
  field :name,          type: String
  field :title,         type: String
  field :email,         type: String
  field :contact_no,    type: String
  field :brand_manager, type: String
  field :business_unit, type: String
  field :category,      type: String
  field :life_cycle,    type: String
# field :company_id,   type: Integer
  
  
  
  validates :name, :brand_manager, :contact_no, :presence => true
  validates :email, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  
end
