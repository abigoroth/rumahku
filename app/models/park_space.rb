class ParkSpace < ApplicationRecord
    has_many :park_spacerentals
    has_many :parkspacelogs    

    def available?
        count = park_spacerentals.where("end_rent > '#{Date.today}'").count
        if count > 0 
            false
        else 
            true
        end
    end

end
