require 'rails_helper'

RSpec.describe "Reacts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/react/index"
      expect(response).to have_http_status(:success)
    end
  end

end
