class User < ApplicationRecord
  
  has_many :apartments
  has_many :park_spaces
  

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy 
  
  has_and_belongs_to_many :apartments


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name
  email.split('@')[0]
  end

  


  has_many :members, inverse_of: :user
  accepts_nested_attributes_for :members, reject_if: :all_blank, allow_destroy: true

  has_many :cars, inverse_of: :user
  accepts_nested_attributes_for :cars, reject_if: :all_blank, allow_destroy: true
  
  has_many :apartments
  belongs_to :apartment
  has_many :park_spaces


  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy     


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def name
  email.split('@')[0]
  end

end


