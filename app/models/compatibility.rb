class Compatibility < ApplicationRecord
validates_uniqueness_of :horoscope_id
  belongs_to :user
  belongs_to :horoscope
end
