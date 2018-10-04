module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.email
    end

    protected
    def find_verified_user
      if cookies.signed['user.id']
        verified_user = User.find_by(id: cookies.signed['user.id'])

      elsif cookies.signed['admin.id']
        verified_user = Admin.find_by(id: cookies.signed['admin.id'])  

      elsif cookies.signed['guard.id']
        verified_user = Guard.find_by(id: cookies.signed['guard.id'])
      end

      if verified_user
       return verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end