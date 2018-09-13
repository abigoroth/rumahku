class Apartment < ApplicationRecord
    has_many :park_spacerentals
    has_many :cars
    belongs_to :info
   


    belongs_to :user
    
    
end
