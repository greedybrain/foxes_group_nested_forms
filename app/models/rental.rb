class Rental < ApplicationRecord
  
  belongs_to :boat
  belongs_to :customer
  
  accepts_nested_attributes_for :customer

  def customer_attributes=(customer_attributes)
    self.customer = Customer.create(name: customer_attributes[:name])
  end

end
