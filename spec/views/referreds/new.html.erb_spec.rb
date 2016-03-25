require 'rails_helper'

RSpec.describe "referreds/new", type: :view do
  before(:each) do
    assign(:referred, Referred.new(
      :name => "MyString"
    ))
  end

  it "renders new referred form" do
    render

    assert_select "form[action=?][method=?]", referreds_path, "post" do

      assert_select "input#referred_name[name=?]", "referred[name]"
    end
  end
end
