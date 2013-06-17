require 'spec_helper'


describe Karteikarte do

  context 'associations' do
     it {should belong_to(:deck)}
     it {should belong_to(:student)}
   end

  context 'validation' do
     it { should validate_presence_of(:vorname) }
     it { should validate_presence_of(:nachname) }
   end
end

