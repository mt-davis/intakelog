require 'rails_helper'

RSpec.describe "referreds/index", type: :view do
  before(:each) do
    assign(:referreds, [
      Referred.create!(
        :name => "Name"
      ),
      Referred.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of referreds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
