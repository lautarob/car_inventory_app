require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  let(:dealership) {
    Dealership.create!()
  }

  before(:each) do
    assign(:car, Car.create!(price: 10, brand: 1, condition: 0, dealership: dealership))
  end

  it "renders attributes in <p>" do
    render
  end
end
