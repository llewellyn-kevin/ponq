class Club < ApplicationRecord 
  has_many :club_users 
  has_many :users, through: :club_users

  validates :name, 
    presence: true 
  validates :pin, 
    presence: true, 
    length: { is: 5 },
    numericality: { only_integer: true }
end
