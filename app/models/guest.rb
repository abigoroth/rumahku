class Guest < ApplicationRecord
    belongs_to :apartment, optional: true
end
