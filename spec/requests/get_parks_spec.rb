require 'rails_helper'
state = State.create!(name: "Ohio")

describe "get state parks route", :type => :request do

  before { get "/v1/states/#{state.id}/parks" }

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
