class Car < ApplicationRecord
    has_many :park_spacerentals
    belongs_to :apartment, optional: true
    belongs_to :user, optional: true

end
