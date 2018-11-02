require 'rails_helper'

RSpec.describe "Tweeets", type: :request do
  describe "GET /tweeets" do
    it "works! (now write some real specs)" do
      get tweeets_path
      expect(response).to have_http_status(200)
    end
  end
end
