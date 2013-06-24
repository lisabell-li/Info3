require 'spec_helper'

describe "Homepage" do
  it "Info3 Studenten" do
    visit root_path("de")
    page.should have_content("Studenten")
  end
end

 describe "GET 'index'" do
  before do
    get 'index'
  end
  it "should be successful" do
    response.should be_redirect
  end
end

