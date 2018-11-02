require 'rails_helper'

RSpec.describe "tweeets/index", type: :view do
  before(:each) do
    assign(:tweeets, [
      Tweeet.create!(
        :tweeet => "MyText"
      ),
      Tweeet.create!(
        :tweeet => "MyText"
      )
    ])
  end

  it "renders a list of tweeets" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
