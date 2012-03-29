require '#{File.dirname(__FILE__)}/credit_card.rb'
def prompt
  print 'Please enter card number: '
  input = gets.strip
  credit_card = CreditCard.new(input.to_i)
  puts '#{credit_card.type}: #{credit_card.number} (#{credit_card.validity})'
  prompt
end
prompt
