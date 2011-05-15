class Product < ActiveRecord::Base
  
  validates :title, :description, :image_url,  :presence => true
  
  validates_numericality_of :price, :on => :create, :message => "is not a number"
  
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  
end
