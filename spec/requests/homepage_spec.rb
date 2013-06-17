require 'spec_helper'

describe "Homepage" do
  it "Info3 Studenten" do
    visit root_path
    page.should have_content("Info3 Studenten")
  end
end

