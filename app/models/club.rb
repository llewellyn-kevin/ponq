class Club < ApplicationRecord 
  has_and_belongs_to_many :users

  validates :name, 
    presence: true 
  validates :pin, 
    presence: true, 
    length: { is: 5 },
    numericality: { only_integer: true }
end
