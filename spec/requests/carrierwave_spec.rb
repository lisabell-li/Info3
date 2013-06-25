require 'spec_helper'
require 'factory_girl'


describe "Carrierwave Test" do
it "should show that C. loads a picture properly" do
visit new_attachment_path("de")
fill_in "AttDescription", :with => "Nice Door"
fill_in "Name", :with => "bla"
attach_file("Attachments", "#{Rails.root}/spec/requests/door1.jpg")
click_button "Create Attachment"
visit attachments_path("de")
page.should have_content("door1")
page.should have_content("Nice Door")
page.should have_content("bla")

end
end

describe "Carrierwave Test" do
it "should ure properly" do
visit attachments_path("de")
page.should have_content("door1")
page.should have_content("Nice Door")
page.should have_content("bla")
end
end