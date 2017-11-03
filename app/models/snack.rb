class Snack < ApplicationRecord
  validates :name, :price, presence: true
  has_many :machines
  has_many :locations, through: :machines, source: :location
end

