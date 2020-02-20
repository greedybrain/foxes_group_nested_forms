class Customer < ApplicationRecord

     has_many :rentals
     has_many :boats, through: :rentals

end
