class Info < ApplicationRecord
  
     self.table_name = "users"
     has_many :guests
    
end
