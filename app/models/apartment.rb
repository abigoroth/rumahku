class Apartment< ApplicationRecord
   

    has_many :park_spacerentals
    has_many :cars
    has_many :users
    has_many :guests
    belongs_to :user, optional: true
    belongs_to :park_space, optional: true


    has_and_belongs_to_many :users

    #validates :number_apartment, presence: true
    #has_many :parkingqueues
    
    def days  
        @apartment = Apartment.find(id)
        days = ( @apartment.requested_end_rent - @apartment.requested_start_rent ).to_i
        return days;
    end
     
    def price
        price = days * 30
        return price;
    end
   
end

