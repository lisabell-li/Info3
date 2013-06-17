require 'spec_helper'


describe Karteikarte do

  it "should be in deck, assigned to it" do
    Karteikarte = Karteikarte.new
    Karteikarte.assign_deck("1")
    Karteikarte.should be_in_deck("1")
  end
end