require File.dirname(__FILE__)+"/card_type.rb"
require File.dirname(__FILE__)+"/luhn.rb"

class CreditCard < ActiveRecord::Base

include CardType
include Luhn

  before_save :assign_attrs

  def assign_attrs
    self.provider = find_card_type(number)
    self.validity = validate(number) ? "valid" : "invalid"
  end

end
