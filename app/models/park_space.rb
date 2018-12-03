class ParkSpace < ApplicationRecord
    has_many :park_spacerentals
    has_many :parkspacelogs
    has_many :apartments, inverse_of: :park_space
    accepts_nested_attributes_for :apartments, reject_if: :all_blank, allow_destroy: true

    has_many :requests, class_name: "Apartment" 
    
    #validates :start_rent, presence: true
    #validates :end_rent, presence: true
    

    
    def available?
        count = park_spacerentals.where("end_rent > '#{Date.today}'").count
        if count > 0 
            false
        else 
            true
        end
    end

    def colour
        #kalau ada org sewa warna merah,
        #kalau ada org book warna grey,
        #selain tu warna hijau

        if available? == false
            return "ff0000"
        elsif !requests.empty?
            return "b4b4b4"
        else 
            return "80ff00"
        end        

    end

    

end
