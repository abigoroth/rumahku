class Apartment < ApplicationRecord
    has_many :park_spacerentals
    has_many :cars
    belongs_to :user, optional: true
    

    #validates :NumberApartment, presence: true
    #has_many :parkingqueues
 
end
