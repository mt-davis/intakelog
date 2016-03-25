require 'rails_helper'

RSpec.describe "referreds/show", type: :view do
  before(:each) do
    @referred = assign(:referred, Referred.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
