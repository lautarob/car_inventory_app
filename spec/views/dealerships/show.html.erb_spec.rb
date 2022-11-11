require 'rails_helper'

RSpec.describe "dealerships/show", type: :view do
  before(:each) do
    assign(:dealership, Dealership.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
