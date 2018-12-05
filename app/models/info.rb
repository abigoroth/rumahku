class Info < ApplicationRecord

    #acts_as_tree order: "name"
    self.table_name = "users"
    has_many :guests   
    has_many :apartments
end

