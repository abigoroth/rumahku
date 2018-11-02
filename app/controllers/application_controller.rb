class ApplicationController < ActionController::Base
    
      
    #before_action :authenticate_user!
  
    layout :get_layout

    def get_layout
        if current_admin
          'admin'
        elsif current_user
          'user'
        else
          'guard'
        end  
    end

    def authenticate(user_types) # ['admin', 'user', 'guard']
        allow_access = false
        user_types.each do |type|         
          allow_access = true if eval("current_#{type}")
        end
        if allow_access == false
          redirect_to "/pages/residentlist", notice: "Not authorize"
        end
      end

      
        
      
end
