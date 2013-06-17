require 'spec_helper'

describe "Scores" do
  it "Schould have Button to show score" do
    visit scores_path
    page.should have_content("New Score")
  end
end


