require 'spec_helper'

#to be tested locally only because of pictures needed
=begin
describe "Carrierwave Test" do
it "should show that C. loads a picture properly" do
visit new_attachment_path("de")
fill_in "AttDescription", :with => "Nice Door"
fill_in "Name", :with => "bla"
attach_file("Attachments", "#{Rails.root}/spec/requests/door1.jpg")
click_button "Create Attachment"
page.should have_content("Nice Door")
page.should have_content("bla")

end
end

describe "Carrierwave Test 2" do
it "picture should be on mainpage" do
visit attachments_path("de")
page.should have_content("test1")
page.should have_content("Nice Door")
page.should have_content("bla")
end
end

describe "Carrierwave Test 3" do
it "picture should be renamed" do
visit attachments_path("de")
page.should have_content("test1")
end
end

describe "Carrierwave Test" do
it "should show that C. loads only whitelisted pics" do
visit new_attachment_path("de")
fill_in "AttDescription", :with => "Nice Door"
fill_in "Name", :with => "bla"
attach_file("Attachments", "http://www.avbrand.com/images/door.png")
click_button "Create Attachment"
end
end
=end