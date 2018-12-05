class GuardController < ActionController::Base
    before_action :authenticate_guard!
    
end