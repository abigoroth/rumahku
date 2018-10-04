class Floorplan < ApplicationRecord    
    has_many :mapareas#, inverse_of: :floorplan
    accepts_nested_attributes_for :mapareas, reject_if: :all_blank, allow_destroy: true

    belongs_to :cluster
    mount_uploader :picture, PictureUploader

    
    
end
