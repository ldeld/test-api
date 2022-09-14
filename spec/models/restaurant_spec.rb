require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  # it "is not valid without a name" do
  #   expect(Restaurant.new).to_not be_valid
  # end

  # it "is valid with valid attributes" do
  #   expect(Restaurant.new(name: "My Restaurant")).to be_valid
  # end

  it "is not valid without a name" do
    restaurant = Restaurant.new
    expect(restaurant).to_not be_valid
  end

  it "is valid when given a name" do
    restaurant = Restaurant.new(name: "My Restaurant")
    expect(restaurant).to be_valid  
  end
end
