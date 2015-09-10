require 'rails_helper'

RSpec.describe "insurances/index", type: :view do
  before(:each) do
    assign(:insurances, [
      Insurance.create!(
        :name => "Name"
      ),
      Insurance.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of insurances" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
