require 'spec_helper'
require 'Karteikarte'



describe Karteikarte do
  setup do
    @kärtchen = Karteikarte.new
   end

  context "Deck_id" do
   it "should be in deck, assigned to it" do
      @kärtchen.attributes = valid_karteikarte_attributes
      @kärtchen.assign_deck(2)
      @kärtchen.should be_in_deck(2)
    end
 end

  context 'associations' do
     it {should belong_to(:deck)}
     it {should belong_to(:student)}
   end

  context 'validation' do
     it { should validate_presence_of(:vorname) }
     it { should validate_presence_of(:nachname) }
   end
end

