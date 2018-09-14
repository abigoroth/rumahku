class Apartment < ApplicationRecord
    has_many :park_spacerentals
    has_many :cars
    belongs_to :user
   


    belongs_to :user
    
    
end
