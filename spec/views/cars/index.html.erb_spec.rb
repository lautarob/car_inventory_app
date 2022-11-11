require 'rails_helper'

RSpec.describe "cars/index", type: :view do
  let(:dealership) {
    Dealership.create!()
  }

  before(:each) do    
    assign(:cars, [
      Car.create!(price: 10, brand: 1, condition: 0, dealership: dealership),
      Car.create!(price: 10, brand: 1, condition: 0, dealership: dealership)
    ])
  end

  it "renders a list of cars" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
