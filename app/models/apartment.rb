class Apartment < ApplicationRecord
    has_many :park_spacerentals
    has_many :cars
    belongs_to :user, optional: true
    belongs_to :park_space, optional: true

    #validates :number_apartment, presence: true
    #has_many :parkingqueues
   


  
    
    
end
