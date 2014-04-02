require File.dirname(__FILE__)+"/credit_card.rb"
def prompt
  print "Please enter card numbers: "
    card_hash = []
  8.times do
    input = gets.strip
    credit_card = CreditCard.new(input)
    card_hash += [[credit_card.type, credit_card.number, credit_card.validity]]
  end
  puts "The result:"
  card_hash.each do |credit_card|
    puts "#{credit_card[0]}: #{credit_card[1]} (#{credit_card[2]})"
  end
end
prompt
