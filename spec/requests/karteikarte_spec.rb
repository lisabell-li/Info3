require 'spec_helper'



describe Karteikarte do
  setup do
    @karti = Karteikarte.new
   end

  context "Deck_id" do
   it "should be in deck, assigned to it" do
      @karti.attributes = valid_karteikarte_attributes
      @karti.assign_deck(2)
      @karti.should be_in_deck(2)
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

