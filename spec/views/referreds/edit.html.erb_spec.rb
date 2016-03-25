require 'rails_helper'

RSpec.describe "referreds/edit", type: :view do
  before(:each) do
    @referred = assign(:referred, Referred.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit referred form" do
    render

    assert_select "form[action=?][method=?]", referred_path(@referred), "post" do

      assert_select "input#referred_name[name=?]", "referred[name]"
    end
  end
end
