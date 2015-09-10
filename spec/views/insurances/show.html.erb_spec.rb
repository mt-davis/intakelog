require 'rails_helper'

RSpec.describe "insurances/show", type: :view do
  before(:each) do
    @insurance = assign(:insurance, Insurance.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
