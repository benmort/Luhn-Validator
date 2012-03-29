require "../modules/card_type"
require "../modules/luhn"

class CreditCard

include CardType
include Luhn

  attr_accessor :number, :type, :validity

  def initialize(card_number)
    self.number = card_number
    self.type = find_card_type(card_number)
    self.validity = validate(card_number) ? "valid" : "invalid"
  end

end
