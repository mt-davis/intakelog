require 'rails_helper'

RSpec.describe "Insurances", type: :request do
  describe "GET /insurances" do
    it "works! (now write some real specs)" do
      get insurances_path
      expect(response).to have_http_status(200)
    end
  end
end
