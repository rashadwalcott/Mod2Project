class User < ApplicationRecord
  has_many :compatibilities
  belongs_to :horoscope
end
