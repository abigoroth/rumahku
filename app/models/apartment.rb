class Apartment< ApplicationRecord
    jsonb_accessor :requested_rent_date,
    requested_start_rent: :date,
    requested_end_rent: :date,
    park_space_id: :integer

    has_many :park_spacerentals
    has_many :cars
    has_many :users
    belongs_to :user, optional: true
    belongs_to :park_space, optional: true

    has_and_belongs_to_many :users

    #validates :number_apartment, presence: true
    #has_many :parkingqueues
    
   
end

