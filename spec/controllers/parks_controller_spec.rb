require 'rails_helper'

describe V1::ParksController do
  describe "GET #all" do
    before do
      get :all
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
