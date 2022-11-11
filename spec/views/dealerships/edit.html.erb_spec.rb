require 'rails_helper'

RSpec.describe "dealerships/edit", type: :view do
  let(:dealership) {
    Dealership.create!()
  }

  before(:each) do
    assign(:dealership, dealership)
  end

  it "renders the edit dealership form" do
    render

    assert_select "form[action=?][method=?]", dealership_path(dealership), "post" do
    end
  end
end
