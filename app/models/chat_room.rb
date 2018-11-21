class ChatRoom < ApplicationRecord

  belongs_to :user, optional: true
  belongs_to :admin, optional: true
  belongs_to :guard, optional: true
  
  has_many :messages, dependent: :destroy
end