require 'rails_helper'

RSpec.describe "tweeets/new", type: :view do
  before(:each) do
    assign(:tweeet, Tweeet.new(
      :tweeet => "MyText"
    ))
  end

  it "renders new tweeet form" do
    render

    assert_select "form[action=?][method=?]", tweeets_path, "post" do

      assert_select "textarea[name=?]", "tweeet[tweeet]"
    end
  end
end
