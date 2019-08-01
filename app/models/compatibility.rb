class Compatibility < ApplicationRecord

  belongs_to :user
  belongs_to :horoscope


def is_compatible

if @first_horoscope == "Virgo" && @second_horoscope == "Aries"
  "Compatible"
else
  "Not Compatible"
end

end





end
