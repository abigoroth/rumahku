class ParkSpace < ApplicationRecord
    has_many :park_spacerentals
    has_many :parkspacelogs    
end
