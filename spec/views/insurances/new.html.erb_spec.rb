require 'rails_helper'

RSpec.describe "insurances/new", type: :view do
  before(:each) do
    assign(:insurance, Insurance.new(
      :name => "MyString"
    ))
  end

  it "renders new insurance form" do
    render

    assert_select "form[action=?][method=?]", insurances_path, "post" do

      assert_select "input#insurance_name[name=?]", "insurance[name]"
    end
  end
end
