require 'spec_helper'

describe "Professor" do
  it "Schould have emailAdress" do
    visit professors_path("de")
    page.should have_content("Professor")
  end
end



