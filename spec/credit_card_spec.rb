require File.dirname(__FILE__)+"/spec_helper.rb"
 
describe CreditCard do

  CREDIT_CARDS = YAML::load(File.open("/home/zarathustra/ror/ruby/luhn/data/test_data.yml"))["credit_cards"]

  CREDIT_CARDS.each do |credit_card|
    context "object against test data" do
      before (:each) do
        @number = credit_card["number"]
        @type = credit_card["type"]
        @validity = credit_card["validity"]
        @credit_card = CreditCard.new(@number)
      end
      describe "#number" do
        it "returns the correct number" do
          @credit_card.number.should eql @number
        end
      end
      describe "#type" do
        it "returns the correct type" do
          @credit_card.type.should eql @type
        end
      end
      describe "#valid" do
        it "returns the correct valid" do
          @credit_card.validity.should eql @validity
        end
      end
    end
  end

end
