class Compatibility < ApplicationRecord

  validates :first_name, :last_name, :user_name, uniqueness: true

  belongs_to :user
  belongs_to :horoscope
end
