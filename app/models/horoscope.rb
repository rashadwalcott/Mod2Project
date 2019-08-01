class Horoscope < ApplicationRecord
  has_many :compatibilities
  has_many :users, through: :compatibilities
end
