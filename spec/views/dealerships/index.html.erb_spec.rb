require 'rails_helper'

RSpec.describe "dealerships/index", type: :view do
  before(:each) do
    assign(:dealerships, [
      Dealership.create!(),
      Dealership.create!()
    ])
  end

  it "renders a list of dealerships" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
