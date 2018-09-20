class ParkSpacerental < ApplicationRecord
    mount_uploader :picture, PictureUploader

    belongs_to :park_space
    belongs_to :car
    belongs_to :apartment

    
end
