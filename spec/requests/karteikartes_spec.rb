require 'spec_helper'


describe Karteikarte do
  it "should be in deck, assigned to it" do
    Karteikarte = Karteikarte.new
    Karteikarte.assign_deck(:deck_id)
    Karteikarte.should be_in_deck(:deck_id)
  end
end