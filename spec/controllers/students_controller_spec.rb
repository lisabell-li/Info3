require 'spec_helper'

describe "Student" do
  it "should have full name out of vorname und nachname" do
    S = Student.new
    S.vorname= "Lisa"
	S.nachname= "Bell"
    expect(S.name).to eq("Lisa Bell")
  end
end


