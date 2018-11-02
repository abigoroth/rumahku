class ChatRoom < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, optional: true
  belongs_to :admin, optional: true
  belongs_to :guard, optional: true
=======
  belongs_to :user
  belongs_to :admin
  belongs_to :guard
>>>>>>> 6532d81f2dbeb51a1b3c7f4b05f9233a5c7176ec
  has_many :messages, dependent: :destroy
end