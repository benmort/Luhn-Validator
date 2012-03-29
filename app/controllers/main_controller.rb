class MainController < ApplicationController

  def index

  end

  def code
    @credit_card = CodeRay.scan(File.read("#{Rails.root}/public/luhn/credit_card.rb"), :ruby).div(:line_numbers => :table).html_safe
  end

end
