module CardType

    def find_card_type(card_number)
      # convert card_number datatype from integer to string
      card_string = card_number.to_s
      # return the name of the card
      # when the length of the string is validated
      # and the regexp on the string returns 0 indicating validation
      return "VISA"         if [13,16].include?(card_string.length) && (card_string =~ /^4/) == 0
      return "MasterCard"   if card_string.length == 16 && (card_string =~ /^(5[1-5])/) == 0
      return "AMEX"         if card_string.length == 15 && (card_string =~ /^(34|37)/) == 0
      return "Discover"     if card_string.length == 16 && (card_string =~ /^6011/) == 0
      # if no matches are found return "Unknown"
      return "Unknown"
    end

end
