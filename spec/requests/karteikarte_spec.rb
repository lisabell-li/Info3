require 'spec_helper'


describe "Karteikarte" do
  it "should be in deck, assigned to it" do
    Karteikarte = Karteikarte.new
    Karteikarte.assign_deck("1")
    Karteikarte.should be_in_deck("1")
  end
  context 'associations' do
     it {should belong_to(:deck)}
     it {should belong_to(:student)}
   end

  context 'validation' do
     it { should validate_presence_of(:vorname) }
     it { should validate_presence_of(:nachname) }
     it { should validate_presence_of(:foto) }
   end
end