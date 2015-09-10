require 'rails_helper'

RSpec.describe "insurances/edit", type: :view do
  before(:each) do
    @insurance = assign(:insurance, Insurance.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit insurance form" do
    render

    assert_select "form[action=?][method=?]", insurance_path(@insurance), "post" do

      assert_select "input#insurance_name[name=?]", "insurance[name]"
    end
  end
end
