class GuardController < ActionController::Base
    before_action :authenticate_guard!

      def guard
        render layout: "guard"
      end
    
end