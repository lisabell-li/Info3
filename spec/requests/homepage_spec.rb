require 'spec_helper'

describe "Homepage" do
  it "Info3 Studenten" do
    visit students_path
    page.should have_content("Ansehen")
  end
end
 	