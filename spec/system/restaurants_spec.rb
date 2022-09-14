require 'rails_helper'

RSpec.describe "Restaurants", type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  context "when visiting the index page" do
    it "should display a Restaurants header" do 
      visit '/restaurants'

      expect(page).to have_text("Restaurants")
    end

    it "should display a list of restaurants" do
      restaurant1 = Restaurant.create!(name: "First restaurant")
      restaurant2 = Restaurant.create!(name: "Second restaurant")
      
      visit '/restaurants'
      expect(page).to have_text(restaurant1.name)  
      expect(page).to have_text(restaurant2.name)  
      
    end
  end
end
