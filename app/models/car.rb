class Car < ApplicationRecord
    has_many :park_spacerentals
    belongs_to :apartment    
    
end
