require 'spec_helper'


  describe "locales paths" do
    I18n.available_locales.each do |locale|
      describe "routing with locales" do
        it "should direct to the root path with locale" do
          get("/#{locale.to_s}").
          should route_to("students#index", locale: locale.to_s)
        end
      end
   end
   end

   describe "Homepage" do
   it "should have translation and not flash error" do
   visit root_path("de")
   page.should have_content(I18n.t('students.lastname'))
   end
   end
