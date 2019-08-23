require 'rails_helper'

describe "destroy state route", :type => :request do
  state = FactoryBot.create(:state)
  state2 = FactoryBot.create(:state)

  before { delete '/states/3' }
  before { get '/states'}

  it 'destroy a state' do
    expect(JSON.parse(response.body).size).to eq(19)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
