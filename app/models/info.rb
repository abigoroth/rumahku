class Info < ApplicationRecord
    
    has_many :apartments
     self.table_name = "users"

end
