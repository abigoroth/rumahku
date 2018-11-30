class ParkSpacerental < ApplicationRecord

    mount_uploader :picture, PictureUploader

    belongs_to :park_space, optional: true
    belongs_to :car, optional: true
    belongs_to :apartment, optional: true

    
end
