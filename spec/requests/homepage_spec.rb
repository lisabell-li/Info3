require 'spec_helper'

describe "Homepage" do
  it "Info3 Studenten" do
    visit root_path
    page.should have_content("Info3 Studenten")
  end
end

  describe "Scores" do
  it "Schould have Button to show score" do
    visit scores_path
    page.should have_content("New Score")
  end
end

describe "Professor" do
  it "Schould have name" do
    visit professors_path
    page.should have_content("Emailaddress")
  end
end


describe "Karteikarte" do
  it "should be in deck, assigned to it" do
    Karteikarte = Karteikarte.new
    Karteikarte.assign_deck("1")
    Karteikarte.should be_in_deck("1")
  end
end

describe "Student" do
  it "should have full name out of vorname und nachname" do
    S = Student.new
    S.vorname= "Lisa"
	S.nachname= "Bell"
    S.name=  "Lisa Bell"
  end
end

