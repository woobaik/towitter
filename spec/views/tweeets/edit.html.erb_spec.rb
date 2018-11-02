require 'rails_helper'

RSpec.describe "tweeets/edit", type: :view do
  before(:each) do
    @tweeet = assign(:tweeet, Tweeet.create!(
      :tweeet => "MyText"
    ))
  end

  it "renders the edit tweeet form" do
    render

    assert_select "form[action=?][method=?]", tweeet_path(@tweeet), "post" do

      assert_select "textarea[name=?]", "tweeet[tweeet]"
    end
  end
end
