require 'rails_helper'

RSpec.describe "tweeets/show", type: :view do
  before(:each) do
    @tweeet = assign(:tweeet, Tweeet.create!(
      :tweeet => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
