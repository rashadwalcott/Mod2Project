class User < ApplicationRecord
  validates_presence_of :first_name,:last_name,:age,:user_name,:horoscope_id
  validates_uniqueness_of :user_name,:email
  has_many :compatibilities
  belongs_to :horoscope
end
