require 'rails_helper'

describe "get state parks route", :type => :request do
  state = FactoryBot.create(:state)

  before { get "/v1/states/#{state.id}/parks" }

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
