require 'spec_helper'

describe Karteikarte do
 
  context "Deck_id" do
   it "should be in deck, assigned to it" do  
   	  karti = Karteikarte.new
      karti.student_id = 1
      karti.deck_id =  1
      karti.vorname = "Lisa"
      karti.nachname = "Bell"
      expect(karti.deck_id).to eq(1);
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

