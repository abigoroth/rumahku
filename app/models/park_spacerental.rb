class ParkSpacerental < ApplicationRecord
    belongs_to :park_space
    belongs_to :car
    belongs_to :apartment
end