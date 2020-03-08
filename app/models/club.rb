class Club < ApplicationRecord 
  validates :name, 
    presence: true 
  validates :pin, 
    presence: true, 
    length: { is: 5 },
    numericality: { only_integer: true }
end
