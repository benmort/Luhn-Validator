module Luhn

    # luhn algorithm
    def validate(card_number)
      # declare variables to hold running totals of odd and even digits
      digit_sum = 0
      # iterate through digit array
      digit_array(card_number).each_with_index do |item, index|
        # check odd indexed array items
        # because index starts at 0
        if index.odd?
          # double array item
          item *= 2
          # item less 9 if more than or equal to 10
          item -= 9 if item >= 10
        end
        # digital sum running total of digital array items
        digit_sum += item
      end
      # modulo of digit_sum
      modulo(digit_sum)
    end

    #convert integer to a reversed array of digits
    def digit_array(card_number)
      card_number.to_s.reverse.split(//).map{|digit| digit.to_i}
    end

    # boolean whether the digit_sum modulo 10 is 0
    def modulo(digit_sum)
      digit_sum % 10 == 0
    end

end
