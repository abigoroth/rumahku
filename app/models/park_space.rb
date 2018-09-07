class ParkSpace < ApplicationRecord
    has_many :park_spacerentals
    #belongs_to :apartments
end
