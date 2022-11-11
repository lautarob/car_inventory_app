require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  let(:dealership) {
    Dealership.create!()
  }

  let(:car) {
    Car.create!(price: 10, brand: 1, condition: 0, dealership: dealership)
  }

  before(:each) do
    assign(:car, car)
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(car), "post" do
    end
  end
end
