require 'spec_helper'

FactoryGirl.define do

#Asset factory 
factory :asset do
name “name”
reference “cust-ref”
description “description”
end
end


describe “Asset Created – image ” do
it “create a new assset in the system” do
asset = FactoryGirl.build(:asset)
visit student_new_path(de)

fill_in “vorname”, :with => asset.name
fill_in “Description”, :with => asset.description

#user file upload boxes

attach_file(‘asset_file’,”#{Rails.root}/spec/fixtures/images/image1.png”)\

#save_and_open_page 
click_button “Create Asset”

stored_asset = Asset.last()
#Check URL
current_path.should eq(asset_path(stored_asset))

#Check data on page
page.should have_content(asset.name)
page.should have_content(asset.description)
page.should have_content(stored_asset.file)