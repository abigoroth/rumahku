class Apartment < ApplicationRecord
    has_many :park_spacerentals
    has_many :cars
    belongs_to :user

    #validates :NumberApartment, presence: true
    #has_many :parkingqueues
   


    belongs_to :user
    
    
end
