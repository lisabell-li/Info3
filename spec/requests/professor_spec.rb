require 'spec_helper'

describe "Professor" do
  it "Schould have name" do
    visit professors_path
    page.should have_content("Emailaddress")
  end
end



