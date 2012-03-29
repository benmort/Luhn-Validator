class MainController < ApplicationController

  def index

  end

  def result
    CreditCard.destroy_all
    @cc_input = params[:cc_numbers].to_s
    @cc_numbers = @cc_input.gsub(/\r/, "").gsub(" ","").split(/\n/)
    @cc_objects
    @cc_numbers.each do |cc|
      @new_cc = CreditCard.create(:number => cc.to_i)
    end
    @cc_objects = CreditCard.all
    respond_to do |format|
      format.js
    end
  end

  def data
    render :layout => false
  end

end
