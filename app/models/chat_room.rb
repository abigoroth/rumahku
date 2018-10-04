class ChatRoom < ApplicationRecord
  belongs_to :user
  belongs_to :admin
  belongs_to :guard
  has_many :messages, dependent: :destroy
end